import 'package:be_sharp/provider/view_model/auth_view_model.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthViewModel notifier() => ref.read(authProvider.notifier);
    return BasicPage(
      showAppBar: false,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 100,
                ),
                const SizedBox(height: 48),
                Text(
                  'ようこそ',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 24),
                Text(
                  'アカウントにサインインして始めましょう',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                RoundedButton(
                  press: notifier().onAppleSignInButtonPressed,
                  icon: const FaIcon(
                    FontAwesomeIcons.apple,
                    size: 36,
                    color: Colors.white,
                  ),
                  text: 'Appleで続ける',
                  textColor: Colors.white,
                  buttonColor: Colors.black87,
                ),
                const SizedBox(height: 16),
                RoundedButton(
                  borderColor: Colors.black,
                  press: notifier().onGoogleSignInButtonPressed,
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    size: 36,
                    color: Colors.black87,
                  ),
                  text: 'Googleで続ける',
                  textColor: Colors.black87,
                  buttonColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
