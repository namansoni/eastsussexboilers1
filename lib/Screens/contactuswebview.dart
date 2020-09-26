import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ContactusWebView extends StatefulWidget {
  @override
  _ContactusWebViewState createState() => _ContactusWebViewState();
}

class _ContactusWebViewState extends State<ContactusWebView> {
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
        url: 'http://eastsussexboilers.co.uk/contact.php',
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
