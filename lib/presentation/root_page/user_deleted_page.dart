import 'package:auto_route/auto_route.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDeletedPage extends StatelessWidget {
  const UserDeletedPage({super.key});
  static const path = "/userDeleted";
  @override
  Widget build(BuildContext context) {
    return const BasicPage(
      child: Align(
        alignment: Alignment.center,
        child: Text('ユーザーを削除しました\n\nお疲れ様でした'),
      ),
    );
  }
}
