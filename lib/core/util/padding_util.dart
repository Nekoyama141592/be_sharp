import 'package:flutter/material.dart';

class PaddingUtil {
  static double _fullHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double _fullWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double vertical(BuildContext context) => _fullHeight(context) * 0.03;
  static double textFieldWidth(BuildContext context) =>
      _fullWidth(context) * 0.8;
  static double userImageSize(BuildContext context) =>
      _fullWidth(context) * 0.16;
}
