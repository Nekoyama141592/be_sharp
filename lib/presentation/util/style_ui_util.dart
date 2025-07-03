import 'package:flutter/material.dart';

class StyleUIUtil {
  static double _bodyLargeFontSize(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.fontSize ?? 14.0;
  }

  static int _listTileLetterCount(BuildContext context) {
    const widthRate = 0.6;
    final width = MediaQuery.of(context).size.width * widthRate;
    final result = width ~/ _bodyLargeFontSize(context);
    return result;
  }

  static String limitListTileText(BuildContext context, String text) {
    final limit = _listTileLetterCount(context);
    if (text.length > limit) {
      return '${text.substring(0, limit)}...';
    }
    return text;
  }
}
