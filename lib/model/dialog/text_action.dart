import 'package:flutter/material.dart';

class TextAction {
  TextAction({required this.text, required this.action});
  final String text;
  final void Function(BuildContext context) action;
}
