import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview/screen/provider/webprovider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {

  WebviewProvider? webviewProviderT;
  WebviewProvider? webviewProviderF;

  @override
  Widget build(BuildContext context) {
    webviewProviderT = Provider.of<WebviewProvider>(context, listen: true);
    webviewProviderF = Provider.of<WebviewProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: webviewProviderT!.webViewController!),
      ),
    );
  }
}
