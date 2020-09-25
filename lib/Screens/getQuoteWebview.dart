import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class GetQuoteWebview extends StatefulWidget {
  @override
  _GetQuoteWebviewState createState() => _GetQuoteWebviewState();
}

class _GetQuoteWebviewState extends State<GetQuoteWebview> {
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: 'http://eastsussexboilers.co.uk/quote.php',
        ignoreSSLErrors: true,
        javascriptChannels: jsChannels,
        mediaPlaybackRequiresUserGesture: false,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        scrollBar: false,
        initialChild: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
