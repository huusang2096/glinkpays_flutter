import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/repository/user_repository.dart';
import 'package:vipay/src/utils/util.dart';

import '../../locator.dart';

class WebView extends StatefulWidget {
  final String url;
  final String title;
  AppPref appRef = locator<AppPref>();
  WebView({this.url, this.title});

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  String _token = '';
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();

  @override
  void initState() {
    getUserToken().then((token) {
      setState(() {});
    });
    super.initState();
  }

  Future<String> getUserToken() {
    return getCurrentUser().then((user) => user.apiToken ??= '');
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.url ?? '',
      javascriptChannels: jsChannels,
      mediaPlaybackRequiresUserGesture: false,
      withZoom: true,
      withLocalStorage: true,
      withJavascript: true,
      userAgent: kUserAgent,
      hidden: true,
      clearCookies: false,
      headers: {'Authorization': 'Bearer ${widget.appRef.token}'},
      appBar: AppBar(
        title: Text(localizedText(context, widget.title ?? ''),
            style: Theme.of(context)
                .textTheme
                .title
                .merge(TextStyle(letterSpacing: 1.3))),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Theme.of(context).hintColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
    );
  }
}
