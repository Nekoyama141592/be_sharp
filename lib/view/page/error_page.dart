import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.e});
  final Object e;
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      appBarText: 'エラー',
      child: Align(
        alignment: Alignment.center,
        child: SelectableText('エラーが発生しました。やり直してください。$e'),
      ),
    );
  }
}
