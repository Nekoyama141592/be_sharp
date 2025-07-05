import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouteUtil {
  static void pushPath(BuildContext context, String path) {
    context.router.pushPath(path);
  }

  static void pushReplace(BuildContext context, String path) {
    context.router.replacePath(path);
  }

  static void back(BuildContext context) {
    context.router.pop();
  }
}
