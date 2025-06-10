import 'package:be_sharp/view/common/custom_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as ft;
import 'package:get/get.dart';

class ToastUiCore {
  static const timeInSecForIosWeb = 3;
  static void showPopup(
      {required BuildContext context,
      required Widget Function(BuildContext) builder}) {
    showCupertinoModalPopup(context: context, builder: builder);
  }

  static Future<void> showFlutterToast(String msg) async {
    await ft.Fluttertoast.showToast(
        gravity: ft.ToastGravity.TOP,
        msg: msg,
        timeInSecForIosWeb: timeInSecForIosWeb);
  }

  static Future<void> showErrorFlutterToast(String msg) async {
    await ft.Fluttertoast.showToast(
        gravity: ft.ToastGravity.TOP,
        msg: msg,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: Colors.red);
  }

  static void _showSnackBar(BuildContext context, SnackBar snackBar) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showSuccessSnackBar(BuildContext context, String msg) {
    _showSnackBar(context, CustomSnackBar.success(context, msg));
  }

  static void showFailureSnackBar(BuildContext context, String msg) {
    _showSnackBar(context, CustomSnackBar.failure(context, msg));
  }

  static void cupertinoAlertDialog(
      String msg, void Function()? positiveAction) {
    Get.dialog(CupertinoAlertDialog(
      content: Text(msg),
      actions: [
        CupertinoDialogAction(onPressed: Get.back, child: const Text('キャンセル')),
        CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: positiveAction,
            child: const Text('OK'))
      ],
    ));
  }
}
