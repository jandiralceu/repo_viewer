import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';

import '../credentials_storage/credentials_storage.dart';

class GithubAuthenticator {
  final CredentialsStorage _credentialStorage;

  GithubAuthenticator({
    required CredentialsStorage credentialStorage,
  }) : _credentialStorage = credentialStorage;

  static const clientID = '0c0e5d0f924bb7c16611';
  static const clientSecret = '6413c6904bc970286f82145045cf3069aa6acf21';
  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final accessTokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final redirectURL = Uri.parse('http://localhost:3000/callback');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialStorage.read();

      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          //TODO: Refresh
        }
      }

      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() {
    return getSignedInCredentials().then((credentials) => credentials != null);
  }
}
