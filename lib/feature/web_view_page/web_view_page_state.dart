import 'package:flutter_riverpod/flutter_riverpod.dart';

final webViewPageStateProvider = StateNotifierProvider.autoDispose<WebViewPageState, bool>(
  (ref) => WebViewPageState(),
);

class WebViewPageState extends StateNotifier<bool> {
  WebViewPageState() : super(true);

  void goBack() {
    state = !state;
  }
}
