import 'package:flutter/material.dart';
import 'package:iyzico/pages/home_page.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebViewPage extends StatelessWidget {
  final htmlCode;

  const WebViewPage({Key? key, this.htmlCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment Page'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            var page = 'r"""$htmlCode"""';
            controller.loadString(page);
          },
        ),
      ),
    );
  }
}
