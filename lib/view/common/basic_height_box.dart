import 'package:be_sharp/core/util/padding_util.dart';
import 'package:flutter/material.dart';

class BasicHeightBox extends StatelessWidget {
  const BasicHeightBox({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingUtil.vertical(context),
    );
  }
}
