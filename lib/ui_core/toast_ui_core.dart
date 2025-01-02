import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as fluttertoast;
import 'package:get/get.dart';

class ToastUICore {
  static const timeInSecForIosWeb = 3;
  static void showPopup(
      {required BuildContext context,
      required Widget Function(BuildContext) builder}) {
    showCupertinoModalPopup(context: context, builder: builder);
  }

  static Future<void> showFlutterToast(String msg) async {
    await fluttertoast.Fluttertoast.showToast(
        msg: msg, timeInSecForIosWeb: timeInSecForIosWeb);
  }

  static Future<void> showErrorFlutterToast(String msg) async {
    await fluttertoast.Fluttertoast.showToast(
        msg: msg,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: Colors.red);
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
