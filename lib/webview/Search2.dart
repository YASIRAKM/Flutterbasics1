import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../basics/Searchfield.dart';
class Sera extends StatefulWidget {
  final  url;
  const Sera({super.key,required this.url});

  @override
  State<Sera> createState() => _SeraState(this.url);
}

class _SeraState extends State<Sera> {
  final  _url;
  _SeraState(this._url);
  
  late WebViewController wb;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wb=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(this._url));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: wb),);
  }
}
