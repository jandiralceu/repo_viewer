import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
  Widget build(BuildContext context) {
    final webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) => {},
          onPageStarted: (url) {},
          onPageFinished: (url) {},
          onWebResourceError: (error) {},
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
