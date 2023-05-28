import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/domain.dart';
import '../infrastructure/infrastructure.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

typedef AuthUriCallback = Future<Uri> Function(Uri authorizationUrl);

class AuthNotifier extends StateNotifier<AuthState> {
  final GithubAuthenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _authenticator.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  Future<void> signIn(AuthUriCallback authorizationCallback) async {
    final grant = _authenticator.creategrant();
    final redirectUrl =
        await authorizationCallback(_authenticator.getAuthorizationUrl(grant));
    final response = await _authenticator.handleAuthorizationResponse(
      grant,
      redirectUrl.queryParameters,
    );

    state = response.fold(
      (failure) => AuthState.failure(failure),
      (_) => const AuthState.authenticated(),
    );

    grant.close();
  }

  Future<void> signOut() async {
    final response = await _authenticator.signOut();

    state = response.fold(
      (failure) => AuthState.failure(failure),
      (_) => const AuthState.unauthenticated(),
    );
  }
}
