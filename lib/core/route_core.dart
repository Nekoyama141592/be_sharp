import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RouteCore {
  static void pushPath(String path) {
    Get.toNamed(path);
  }
  static void pushReplace(String path) {
    Get.offAndToNamed(path);
  }
  static void pushPathWithoutContext(String path) {
    Get.toNamed(path);
  }

  static void back() {
    Get.back();
  }
  static void backWithContext(BuildContext context) {
    Navigator.of(context).pop();
  }
}