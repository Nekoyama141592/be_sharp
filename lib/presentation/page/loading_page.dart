import 'package:be_sharp/presentation/common/loading_screen.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const BasicPage(showAppBar: false, child: LoadingScreen());
  }
}
