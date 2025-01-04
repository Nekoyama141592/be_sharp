import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  const FormLabel({Key? key, required this.title}) : super(key: key);
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
