import 'package:be_sharp/core/padding_core.dart';
import 'package:be_sharp/provider/view_model/admin/admin_view_model.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/common/text_field_container.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AdminPage extends HookConsumerWidget {
  AdminPage({super.key});
  static const path = '/admin';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(adminViewModelProvider.notifier);

    // 問題の入力をする関数
    Widget questionField() {
      return TextFieldContainer(
          width: PaddingCore.textFieldWidth(context),
          child: TextFormField(
            decoration: const InputDecoration(hintText: '問題を入力'),
            onSaved: notifier.setQuestion,
            validator: ValidatorUICore.text,
          ));
    }

    // Latexの入力をする関数
    Widget latexField() {
      return TextFieldContainer(
          width: PaddingCore.textFieldWidth(context),
          child: TextFormField(
            decoration: const InputDecoration(hintText: 'LaTexを入力'),
            onSaved: notifier.setLatex,
            validator: ValidatorUICore.text,
          ));
    }

    // 正解の入力をする関数
    Widget answerField() {
      return TextFieldContainer(
          width: PaddingCore.textFieldWidth(context),
          child: TextFormField(
            decoration: const InputDecoration(hintText: '正解を入力'),
            onSaved: notifier.setAnswer,
            validator: ValidatorUICore.text,
          ));
    }

    // 制限時間の入力をする関数
    Widget timeLimitField() {
      return TextFieldContainer(
          width: PaddingCore.textFieldWidth(context),
          child: TextFormField(
            decoration: const InputDecoration(hintText: '制限時間を入力'),
            onSaved: notifier.setTimeLimit,
            validator: ValidatorUICore.number,
            keyboardType: TextInputType.number,
          ));
    }

    Widget adminForm() {
      return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                questionField(),
                latexField(),
                answerField(),
                timeLimitField(),
              ],
            ),
          ));
    }

    Widget positiveButton() {
      return RoundedButton(
        text: '送信',
        press: () {
          final isValid = formKey.currentState!.validate();
          if (!isValid) return;
          formKey.currentState!.save();
          notifier.onPositiveButtonPressed(context);
        },
      );
    }

    return BasicPage(
        appBarText: '問題作成',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              adminForm(),
              positiveButton(),
            ],
          ),
        ));
  }
}
