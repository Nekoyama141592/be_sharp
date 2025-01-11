import 'package:be_sharp/core/padding_core.dart';
import 'package:be_sharp/provider/view_model/abstract/simple_form_view_model.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/common/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SimpleFormState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> {
  final formKey = GlobalKey<FormState>();
  // 全要素
  Widget buildWidget(SimpleFormInterface notifier) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        titleWidget(notifier),
        form(notifier),
        positiveButton(notifier),
      ],
    );
  }

  // タイトル関数
  Widget titleWidget(SimpleFormInterface notifier) {
    return Text(
      notifier.title,
      style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
    );
  }

  // 入力フォーム関数
  Widget form(SimpleFormInterface notifier) {
    return Form(key: formKey, child: textField(notifier));
  }

  // 文字の入力をする関数
  Widget textField(SimpleFormInterface notifier) {
    return TextFieldContainer(
        width: PaddingCore.textFieldWidth(context),
        child: TextFormField(
          obscureText: notifier.obscureText,
          decoration: InputDecoration(hintText: notifier.hintText),
          onSaved: notifier.setText,
          validator: notifier.validator,
        ));
  }

  // 送信するボタン
  Widget positiveButton(SimpleFormInterface notifier) {
    return RoundedButton(
        press: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
          notifier.onPositiveButtonPressed();
        },
        text: notifier.positiveButtonText);
  }
}
