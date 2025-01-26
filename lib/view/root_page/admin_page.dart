import 'package:be_sharp/core/padding_core.dart';
import 'package:be_sharp/provider/view_model/admin_view_model.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/text_field_container.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/state/abstract/simple_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminPage extends ConsumerStatefulWidget {
  const AdminPage({super.key});
  static const path = '/admin';
  @override
  ConsumerState<AdminPage> createState() => _AdminState();
}

class _AdminState extends SimpleFormState<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(adminProvider.notifier);
    return BasicPage(
        appBarText: '',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleWidget(notifier),
              adminForm(notifier),
              positiveButton(notifier),
            ],
          ),
        ));
  }

  Widget adminForm(AdminViewModel notifier) {
    return Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textField(notifier),
              answerField(notifier),
              timeLimitField(notifier),
            ],
          ),
        ));
  }

  // 正解の入力をする関数
  Widget answerField(AdminViewModel notifier) {
    return TextFieldContainer(
        width: PaddingCore.textFieldWidth(context),
        child: TextFormField(
          decoration: const InputDecoration(hintText: '正解を入力'),
          onSaved: notifier.setAnswer,
          validator: ValidatorUICore.text,
        ));
  }

  // 制限時間の入力をする関数
  Widget timeLimitField(AdminViewModel notifier) {
    return TextFieldContainer(
        width: PaddingCore.textFieldWidth(context),
        child: TextFormField(
          decoration: const InputDecoration(hintText: '制限時間を入力'),
          onSaved: notifier.setTimeLimit,
          validator: ValidatorUICore.number,
          keyboardType: TextInputType.number,
        ));
  }
}
