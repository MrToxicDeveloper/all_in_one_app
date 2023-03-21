import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  List ename = [
    "Amazon",
    "Flipkart",
    "Meesho",
  ];
  List elogo = [
    "lib/utils/images/amazon.jpg",
    "lib/utils/images/flipkart.png",
    "lib/utils/images/meesho.png",
  ];
  List eweb = [
    "https://www.amazon.in/",
    "https://www.flipkart.com/",
    "https://www.meesho.com/",
  ];

  WebViewController? webViewController;

  void initWeb(String webname){
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("$webname"));
  }

  Widget WebSite(String name, String Logo) {
    return Container(
      height: 125,
      width: 150,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset("${Logo}", fit: BoxFit.fitHeight)),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text("${name}"),
                ),
              )),
        ],
      ),
    );
  }

// List elogo = [];
// List eweb = [];
//
// Widget OpenWeb(){
//   return
// }
}
