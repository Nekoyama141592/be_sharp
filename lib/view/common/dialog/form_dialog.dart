import 'package:be_sharp/constants/colors.dart';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormDialog extends HookWidget {
  FormDialog({super.key, required this.initialValue, required this.onSend});
  final Future<void> Function(String) onSend;
  final String? initialValue;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);
    return AlertDialog(
      title: const Text('キャプションを追加'),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: 'キャプション',
                ),
                validator: ValidatorUICore.text,
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            RouteCore.backWithContext(context);
          },
          child: const Text(
            'キャンセル',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        TextButton(
          onPressed: () async {
            final isValid = formKey.currentState!.validate();
            if (!isValid) return;
            formKey.currentState!.save();
            final text = controller.text;
            await onSend(text);
          },
          child: const Text(
            '送信',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
