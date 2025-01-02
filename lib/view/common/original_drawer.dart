import 'package:be_sharp/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OriginalDrawer extends ConsumerWidget {
  const OriginalDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserProvider userNotifier() => ref.read(userProvider.notifier);
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          ListTile(
            title: const Text("ログアウト"),
            onTap: userNotifier().onSignoutButtonPressed,
          )
        ],
      ),
    );
  }
}
