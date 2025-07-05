import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  const FormLabel({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text(title),
        ],
      ),
    );
  }
}
