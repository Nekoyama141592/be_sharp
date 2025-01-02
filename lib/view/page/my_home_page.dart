import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    UserProvider userNotifier() => ref.read(userProvider.notifier);
    return BasicPage(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                  onPressed: userNotifier().onSignoutButtonPressed,
                  child: const Text('サインアウト')),
          ],
        ),
      )
    );
  }
}
