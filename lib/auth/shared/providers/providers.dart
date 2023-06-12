import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import '../../application/application.dart';
import '../../infrastructure/infrastructure.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

final oAuth2InterceptorProvider = Provider(
  (ref) => OAuth2Interceptor(
    authenticator: ref.watch(githubAuthenticatorProvider),
    authNotifier: ref.watch(authNotifierProvider.notifier),
    dio: ref.watch(dioForAuthProvider),
  ),
);

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialsStorage(
    storage: ref.watch(flutterSecureStorageProvider),
  ),
);

final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    dio: ref.watch(dioForAuthProvider),
    credentialStorage: ref.watch(credentialsStorageProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(githubAuthenticatorProvider),
  ),
);
