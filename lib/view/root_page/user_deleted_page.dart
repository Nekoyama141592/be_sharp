import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';

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
