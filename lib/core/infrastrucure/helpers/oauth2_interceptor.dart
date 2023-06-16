import 'package:dio/dio.dart';

import '../../../auth/auth.dart';

class OAuth2Interceptor extends Interceptor {
  final GithubAuthenticator _authenticator;
  final AuthNotifier _authNotifier;
  final Dio _dio;

  OAuth2Interceptor({
    required GithubAuthenticator authenticator,
    required AuthNotifier authNotifier,
    required Dio dio,
  })  : _authenticator = authenticator,
        _authNotifier = authNotifier,
        _dio = dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final credentials = await _authenticator.getSignedInCredentials();
    final newRequestOptions = options
      ..headers.addAll(
        credentials == null
            ? {}
            : {'Authorization': 'bearer ${credentials.accessToken}'},
      );
    handler.next(newRequestOptions);
    // super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final errorResponse = err.response;

    if (errorResponse != null && errorResponse.statusCode == 401) {
      final credentials = await _authenticator.getSignedInCredentials();
      credentials != null && credentials.canRefresh
          ? await _authenticator.refresh(credentials)
          : await _authenticator.clearCredentialsStorage();

      await _authNotifier.checkAndUpdateAuthStatus();

      final refreshedCredentials =
          await _authenticator.getSignedInCredentials();

      if (refreshedCredentials != null) {
        handler.resolve(
          await _dio.fetch(
            errorResponse.requestOptions
              ..headers['Authorization'] =
                  'bearer ${refreshedCredentials.accessToken}',
          ),
        );
      } else {
        handler.next(err);
      }
    }
    // super.onError(err, handler);
  }
}
