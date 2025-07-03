import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RouteUtil {
  static void pushPath(BuildContext context, String path) {
    Get.toNamed(path);
  }

  static void pushReplace(BuildContext context, String path) {
    Get.offAndToNamed(path);
  }

  static void back(BuildContext context) {
    Get.back();
  }
}
