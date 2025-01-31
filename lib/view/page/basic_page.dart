import 'package:be_sharp/constants/colors.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage(
      {super.key,
      this.appBarText,
      this.floatingActionButton,
      this.drawer,
      this.bottomNavigationBar,
      required this.child});
  final String? appBarText;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: scaffoldBackgroundColor,
      appBar: appBarText == null
          ? null
          : AppBar(
              title: Text(appBarText!),
            ),
      floatingActionButton: floatingActionButton,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
    ));
  }
}
