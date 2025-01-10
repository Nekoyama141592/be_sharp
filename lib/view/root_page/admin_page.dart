import 'package:be_sharp/provider/view_model/admin_view_model.dart';
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
              form(notifier),
              positiveButton(notifier),
            ],
          ),
        ));
  }
}
