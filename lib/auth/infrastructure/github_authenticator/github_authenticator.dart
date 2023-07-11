import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../credentials_storage/credentials_storage.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final CredentialsStorage _credentialStorage;
  final Dio _dio;

  GithubAuthenticator({
    required Dio dio,
    required CredentialsStorage credentialStorage,
  })  : _dio = dio,
        _credentialStorage = credentialStorage;

  static final clientID = dotenv.get('CLIENT_ID', fallback: '');
  static final clientSecret = dotenv.get('CLIENT_SECRET', fallback: '');
  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse(dotenv.get('AUTHORIZATION_ENDPOINT', fallback: ''));
  static final tokenEndpoint =
      Uri.parse(dotenv.get('TOKEN_ENDPOINT', fallback: ''));
  static final redirectURL =
      Uri.parse(dotenv.get('REDIRECT_URL', fallback: ''));
  static final revocationEndpoint =
      Uri.parse(dotenv.get('REVOCATION_ENDPOINT', fallback: ''));

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialStorage.read();

      if (storedCredentials != null &&
          storedCredentials.canRefresh &&
          storedCredentials.isExpired) {
        final result = await refresh(storedCredentials);

        return result.fold((_) => null, (newCredentials) => newCredentials);
      }

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() {
    return getSignedInCredentials().then((credentials) => credentials != null);
  }

  AuthorizationCodeGrant creategrant() {
    return AuthorizationCodeGrant(
      clientID,
      authorizationEndpoint,
      tokenEndpoint,
      secret: clientSecret,
      httpClient: GithubOAuthHttpClient(),
    );
  }

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectURL, scopes: scopes);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> parameters,
  ) async {
    try {
      final httpClient = await grant.handleAuthorizationResponse(parameters);
      await _credentialStorage.save(httpClient.credentials);
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final accessToken = await _credentialStorage
          .read()
          .then((credentials) => credentials?.accessToken);
      final usernameAndPassword =
          stringToBase64.encode('$clientID:$clientSecret');

      try {
        await _dio.deleteUri(
          revocationEndpoint,
          data: {'access_token': accessToken},
          options: Options(
            headers: {'Authorization': 'basic $usernameAndPassword'},
          ),
        );
      } on DioException catch (e) {
        if (e.isNoConnectionError) {
          // pass
        } else {
          rethrow;
        }
      }

      return clearCredentialsStorage();
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
    Credentials credentials,
  ) async {
    try {
      final refreshCredentials = await credentials.refresh(
        identifier: clientID,
        secret: clientSecret,
        httpClient: GithubOAuthHttpClient(),
      );

      await _credentialStorage.save(refreshCredentials);
      return right(refreshCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
