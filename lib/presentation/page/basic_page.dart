import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/common/original_app_bar.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage(
      {super.key,
      this.appBarText,
      this.floatingActionButton,
      this.drawer,
      this.bottomNavigationBar,
      this.showAppBar = true,
      required this.child});
  final String? appBarText;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final bool showAppBar;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: showAppBar ? OriginalAppBar(text: appBarText) : null,
      floatingActionButton: floatingActionButton,
      body: child,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
    ));
  }
}
