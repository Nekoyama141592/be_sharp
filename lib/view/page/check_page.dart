import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/view/page/auth_page.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckPage extends ConsumerWidget {
  const CheckPage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkState = ref.watch(checkProvider);
    final userState = ref.watch(userProvider);
    if (!checkState) {
      return const BasicPage(child: Text('同意してください'));
    }
    if (userState == null) {
      return const AuthPage();
    } else {
      return child;
    }
  }
}
