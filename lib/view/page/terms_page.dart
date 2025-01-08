import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const BasicPage(
        child: Align(
      alignment: Alignment.center,
      child: Text('TERMS'),
    ));
  }
}
