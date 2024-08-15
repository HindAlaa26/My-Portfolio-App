import 'package:flutter/material.dart';
import 'dart:html' as html;

class ShowWebViewWeb extends StatelessWidget {
  final String url;

  const ShowWebViewWeb({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          html.window.open(url, "_blank");
        },
        child: const Text('Open Web Page'),
      ),
    );
  }
}
