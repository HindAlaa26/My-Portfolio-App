import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowWebView extends StatelessWidget {
  final String url;

  const ShowWebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Page'),
        ),
        body: WebView(
          initialUrl: url,
        ));
  }
}
