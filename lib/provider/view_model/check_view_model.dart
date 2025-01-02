import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckViewModel extends AutoDisposeNotifier<String> {
  @override
  String build() {
    return '';
  }
}

final checkProvider = NotifierProvider.autoDispose<CheckViewModel,String>(
  () => CheckViewModel()
);