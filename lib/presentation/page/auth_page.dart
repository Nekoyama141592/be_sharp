import 'dart:io';

import 'package:be_sharp/presentation/notifier/auto_dispose/auth/auth_view_model.dart';
import 'package:be_sharp/presentation/common/auth_screen.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthViewModel notifier() => ref.read(authViewModelProvider.notifier);
    return BasicPage(
        showAppBar: false,
        child: AuthScreen(
            useApple: Platform.isIOS,
            useGoogle: true,
            iconData: Icons.lock_outline,
            title: 'アカウントにサインインして始めましょう',
            onAppleSignInButtonPressed: notifier().onAppleSignInButtonPressed,
            onGoogleSignInButtonPressed:
                notifier().onGoogleSignInButtonPressed));
  }
}
