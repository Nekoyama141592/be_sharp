import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.e});
  final Object e;
  @override
  Widget build(BuildContext context) {
    debugPrint(e.toString());
    return const BasicPage(
      appBarText: 'エラー',
      child: Align(
        alignment: Alignment.center,
        child: SelectableText('エラーが発生しました。やり直してください。'),
      ),
    );
  }
}
