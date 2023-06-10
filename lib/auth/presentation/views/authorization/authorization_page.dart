import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../infrastructure/infrastructure.dart';

/// Definition for authorization code redirect attempt callback
typedef Func = void Function(Uri redirectUrl);

/// Authorization sign in page
@RoutePage()
class AuthorizationPage extends StatefulWidget {
  /// URL to be passed to the webviewn
  final Uri _authorizationUrl;

  /// Authorization code redirect attempt callback
  final Func _onAuthorizationCodeRedirectAttempt;

  /// [AuthorizationPage] default constructor
  const AuthorizationPage({
    super.key,
    required Uri authorizationUrl,
    required Func onAuthorizationCodeRedirectAttempt,
  })  : _authorizationUrl = authorizationUrl,
        _onAuthorizationCodeRedirectAttempt =
            onAuthorizationCodeRedirectAttempt;

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  void initState() {
    super.initState();
    WebViewCookieManager().clearCookies();
  }

  @override
  Widget build(BuildContext context) {
    final webViewController = WebViewController()
      ..clearCache()
      ..clearLocalStorage()
      ..reload()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) {
            if (request.url.startsWith(
              GithubAuthenticator.redirectURL.toString(),
            )) {
              widget._onAuthorizationCodeRedirectAttempt(
                Uri.parse(request.url),
              );

              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(widget._authorizationUrl);

    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}
