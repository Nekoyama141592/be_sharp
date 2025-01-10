import 'package:be_sharp/repository/result.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SimpleFormViewModel<T> extends AutoDisposeNotifier<T>
    implements SimpleFormInterface {
  String text = "";
  @override
  void setText(String? value) {
    if (value == null) return;
    text = value;
  }

  @override
  bool get obscureText => false;
  @override
  void showResult(Result result) {
    result.when(success: (_) {
      onSuccess();
    }, failure: () {
      onFailure();
    });
  }

  void onSuccess() {
    ToastUICore.showFlutterToast(successMsg);
  }

  void onFailure() {
    ToastUICore.showErrorFlutterToast(failureMsg);
  }
}

abstract class SimpleFormAsyncViewModel<T> extends AutoDisposeAsyncNotifier<T>
    implements SimpleFormInterface {
  String text = "";
  @override
  void setText(String? value) {
    if (value == null) return;
    text = value;
  }

  @override
  bool get obscureText => false;
  @override
  void showResult(Result result) {
    result.when(success: (_) {
      onSuccess();
    }, failure: () {
      onFailure();
    });
  }

  void onSuccess() {
    ToastUICore.showFlutterToast(successMsg);
  }

  void onFailure() {
    ToastUICore.showErrorFlutterToast(failureMsg);
  }
}

abstract class SimpleFormInterface {
  void setText(String? value);
  void onPositiveButtonPressed();
  // Constant
  String get title;
  String get hintText;
  String? Function(String?)? get validator;
  String get positiveButtonText;
  String get successMsg;
  String get failureMsg;
  bool get obscureText;
  void showResult(Result result);
}
