import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/feature/web_view_page/web_view_page_state.dart';

class WebViewPage extends ConsumerStatefulWidget {
  const WebViewPage({super.key});

  static const String path = '/webView';

  @override
  WebViewPageState createState() => WebViewPageState();
}

class WebViewPageState extends ConsumerState<WebViewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateProvider = ref.watch(webViewPageStateProvider.notifier);
    final webViewVisible = ref.watch(webViewPageStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Visibility(
                visible: webViewVisible,
                child: InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: WebUri('https://www.yahoo.co.jp'),
                  ),
                  onProgressChanged: (_, int progress) {},
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Padding(
                padding: EdgeInsets.only(right: 16, top: 8, left: 16, bottom: 8),
                child: ElevatedButton(
                  onPressed: () {
                    stateProvider.goBack();
                    Navigator.pop(context);
                  },
                  child: Text('hogehoge'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
