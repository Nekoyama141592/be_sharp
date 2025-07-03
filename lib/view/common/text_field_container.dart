import 'package:be_sharp/core/util/padding_util.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    super.key,
    required this.width,
    required this.child,
  });
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: PaddingUtil.vertical(context)),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).focusColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),
    );
  }
}
