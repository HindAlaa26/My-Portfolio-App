import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/shared_component/mobile_web_view.dart';
import 'package:my_portfolio/shared_component/website_web_view.dart';

class ShowWebView extends StatefulWidget {
  final String url;

  const ShowWebView({super.key, required this.url});

  @override
  State<ShowWebView> createState() => _ShowWebViewState();
}

class _ShowWebViewState extends State<ShowWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Page'),
        ),
        body: kIsWeb
            ? ShowWebViewWeb(
                url: widget.url,
              )
            : ShowWebViewMobile(
                url: widget.url,
              ));
  }
}
