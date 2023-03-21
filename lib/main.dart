import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview/screen/provider/webprovider.dart';
import 'package:webview/screen/view/homeview.dart';
import 'package:webview/screen/view/webview_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WebviewProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => HomeView(),
        'web':(context) => WebScreen()},
      ),
    ),
  );
}
