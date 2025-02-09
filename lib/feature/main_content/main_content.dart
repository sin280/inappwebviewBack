import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/feature/web_view_page/web_view_page.dart';

import 'main_content_state.dart';

class MainContent extends ConsumerStatefulWidget {
  const MainContent({super.key});

  @override
  MainContentState createState() => MainContentState();
}

class MainContentState extends ConsumerState<MainContent> {
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
    final stateProvider = ref.read(mainContentStateProvider.notifier);
    final counter = ref.watch(mainContentStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      stateProvider.onGoWebViewPage();
                      context.push(WebViewPage.path);
                    },
                    child: Text('WebViewPage'),
                  ),
                ),
                Text('$counter'),
                Text('data2'),
                Text('data3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
