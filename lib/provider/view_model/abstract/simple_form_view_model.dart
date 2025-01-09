import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SimpleFormViewModel<T> extends AutoDisposeNotifier<T> {
  String text = "";
  void setText(String? value) {
    if (value == null) return;
    text = value;
  }
  void onPositiveButtonPressed();
  // Constant
  String get title;
  String get hintText;
  String? Function(String?)? get validator;
  String get positiveButtonText;
  String get successMsg;
  String get failureMsg;
  bool get obscureText => false;
}