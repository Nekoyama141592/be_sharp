import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OriginalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OriginalAppBar({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text ?? 'BeSharp.',
        style: GoogleFonts.notoSans(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
