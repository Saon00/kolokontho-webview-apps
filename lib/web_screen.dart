import 'package:flutter/material.dart';
import 'package:kolokonthoprokashoni/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          WebView(
            initialUrl: "https://kolokonthoprokashoni.com/",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? const Center(child: SplashScreen()) : const Stack(),
        ],
      ),
    );
  }
}
