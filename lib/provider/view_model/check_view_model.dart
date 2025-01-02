import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckViewModel extends AutoDisposeNotifier<bool> {
  @override
  bool build() {
    return true;
  }
}

final checkProvider = NotifierProvider.autoDispose<CheckViewModel, bool>(
    () => CheckViewModel());
