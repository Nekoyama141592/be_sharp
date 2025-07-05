import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LogoutedPage extends StatelessWidget {
  const LogoutedPage({super.key});
  static const path = "/logouted";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text('ログアウトしました\n\nお疲れ様でした'),
      ),
    );
  }
}
