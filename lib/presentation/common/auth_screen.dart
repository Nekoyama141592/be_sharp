import 'package:be_sharp/presentation/common/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onAppleSignInButtonPressed,
      required this.onGoogleSignInButtonPressed,
      required this.useApple,
      required this.useGoogle});
  final IconData iconData;
  final String title;
  final VoidCallback onAppleSignInButtonPressed;
  final VoidCallback onGoogleSignInButtonPressed;
  final bool useApple;
  final bool useGoogle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
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
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black87,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              if (useApple)
                RoundedButton(
                  borderColor: Colors.black,
                  press: onAppleSignInButtonPressed,
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
              if (useGoogle)
                RoundedButton(
                  borderColor: Colors.black,
                  press: onGoogleSignInButtonPressed,
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
    );
  }
}
