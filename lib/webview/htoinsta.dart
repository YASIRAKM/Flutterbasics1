import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InstaS extends StatefulWidget {
  const InstaS({super.key});

  @override
  State<InstaS> createState() => _InstaSState();
}

class _InstaSState extends State<InstaS> {
  late WebViewController _insta;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _insta = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.instagram.com/"));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: WebViewWidget(controller: _insta),);
  }
}
