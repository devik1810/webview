import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List Link = [
    "https://www.flipkart.com/",
    "https://www.amazon.com/",
    "https://www.meesho.com/",
    "https://www.myntra.com/",
    "https://in.bookmyshow.com/",
    "https://www.shopclues.com/",
    "https://www.limeroad.com/",
    "https://pizzaonline.dominos.co.in/"
  ];
  List Images = [
    "assets/images/flipkart.jpg",
    "assets/images/amazon1.jpg",
    "assets/images/meesho.jpg",
    "assets/images/myntra.jpg",
    "assets/images/myshow.jpg",
    "assets/images/shop.jpg",
    "assets/images/lime.jpg",
    "assets/images/dominos.jpg",
  ];

  void initController(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${Link[index]}"));
  }
}
