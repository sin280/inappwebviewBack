import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainContentStateProvider = StateNotifierProvider.autoDispose<MainContentState, bool>(
  (ref) => MainContentState(),
);

class MainContentState extends StateNotifier<bool> {
  MainContentState() : super(false);

  void onGoWebViewPage() {
    //
  }
}
