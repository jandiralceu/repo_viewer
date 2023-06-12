import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
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

  static const clientID = '0c0e5d0f924bb7c16611';
  static const clientSecret = '6413c6904bc970286f82145045cf3069aa6acf21';
  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final redirectURL = Uri.parse('http://localhost:3000/callback');
  static final revocationEndpoint = Uri.parse(
    'https://api.github.com/applications/$clientID/token',
  );

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
    final accessToken = await _credentialStorage
        .read()
        .then((credentials) => credentials?.accessToken);
    final usernameAndPassword =
        stringToBase64.encode('$clientID:$clientSecret');

    try {
      try {
        await _dio.deleteUri(
          revocationEndpoint,
          data: {'access_token': accessToken},
          options: Options(
            headers: {'Authorization': 'basic $usernameAndPassword'},
          ),
        );
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          // pass
        } else {
          rethrow;
        }
      }

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
