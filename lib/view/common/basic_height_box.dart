import 'package:be_sharp/core/padding_core.dart';
import 'package:flutter/material.dart';

class BasicHeightBox extends StatelessWidget {
  const BasicHeightBox({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingCore.vertical(context),
    );
  }
}
