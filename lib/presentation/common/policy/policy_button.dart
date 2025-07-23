import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PolicyButton extends StatelessWidget {
  const PolicyButton({super.key, required this.label, required this.onPressed});
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              label,
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                color: AppColors.premiumInfo,
                fontSize: 14,
              ),
            )));
  }
}
