import 'package:be_sharp/core/util/padding_util.dart';
import 'package:be_sharp/view/common/text_field_container.dart';
import 'package:flutter/material.dart';

class OriginalForm extends StatelessWidget {
  const OriginalForm(
      {super.key,
      this.initialValue,
      this.decoration,
      this.maxLines,
      this.keyboardType,
      this.onSaved,
      this.validator});
  final String? initialValue;
  final InputDecoration? decoration;
  final int? maxLines;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      width: PaddingUtil.textFieldWidth(context),
      child: TextFormField(
        initialValue: initialValue,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: decoration,
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
