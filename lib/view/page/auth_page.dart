import 'package:be_sharp/provider/view_model/auth_view_model.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    AuthViewModel notifier() => ref.read(authProvider.notifier);
    return BasicPage(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
          onPressed: notifier().onAppleSignInButtonPressed, 
          child: const Text('Appleで続ける')
        ),
            ElevatedButton(
          onPressed: notifier().onGoogleSignInButtonPressed, 
          child: const Text('Googleで続ける')
        ),
            ElevatedButton(
          onPressed: notifier().onSignoutButtonPressed, 
          child: const Text('サインアウト')
        ),

          ],
        ),
      )
    );
  }
}