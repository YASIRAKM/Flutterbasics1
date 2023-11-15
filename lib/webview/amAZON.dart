import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ama extends StatefulWidget {
  const Ama({super.key});

  @override
  State<Ama> createState() => _AmaState();
}

class _AmaState extends State<Ama> {
  late WebViewController _amazon;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _amazon = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.amazon.in/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _amazon),
    );
  }
}
