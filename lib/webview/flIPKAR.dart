import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Flip extends StatefulWidget {
  const Flip({super.key});

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  late WebViewController _flipkart;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _flipkart = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.flipkart.com/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: _flipkart),);
  }
}
