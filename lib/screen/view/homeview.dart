import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview/screen/provider/webprovider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  WebviewProvider? webviewProviderT;
  WebviewProvider? webviewProviderF;

  @override
  Widget build(BuildContext context) {
    webviewProviderF = Provider.of<WebviewProvider>(context, listen: false);
    webviewProviderT = Provider.of<WebviewProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Shopping",
            ),actions: [Icon(Icons.arrow_forward)],
            backgroundColor: Color(0xff2C0953)),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisExtent: 150,mainAxisSpacing: 10),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'web');
              webviewProviderT!.initController(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                child: Image.asset(
                  "${webviewProviderT!.Images[index]}",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 3)),
              ),
            ),
          ),
          itemCount: webviewProviderT!.Images.length,
        ),
      ),
    );
  }
}
