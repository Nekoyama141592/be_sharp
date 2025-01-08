import 'package:be_sharp/infrastructure/firebase_auth/firebase_auth_client.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.e});
  final Object e;
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      child: InkWell(
        onTap: () async => await FirebaseAuthClient().signOut(),
        child: Align(
          alignment: Alignment.center,
          child: Text('エラーが発生しました。やり直してください。$e'),
        ),
      ),
    );
  }
}
