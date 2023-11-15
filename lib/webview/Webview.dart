import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webvi extends StatefulWidget {
  const Webvi({super.key});

  @override
  State<Webvi> createState() => _WebviState();
}

class _WebviState extends State<Webvi> {
  late WebViewController _webviews;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _webviews=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://thefuturalabs.com/"));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _webviews),
    );
  }
}
