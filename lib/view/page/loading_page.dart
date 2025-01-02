import 'package:be_sharp/view/common/loading_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const BasicPage(child: LoadingScreen());
  }
}
