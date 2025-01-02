import 'package:flutter/material.dart';

class PaddingCore {
  static double _fullHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double vertical(BuildContext context) => _fullHeight(context) * 0.03;
}