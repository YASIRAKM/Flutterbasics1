import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Facebo extends StatefulWidget {
  const Facebo({super.key});

  @override
  State<Facebo> createState() => _FaceboState();
}

class _FaceboState extends State<Facebo> {
  late WebViewController _facebook;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _facebook = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.facebook.com/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller:_facebook ),
    );
  }
}
