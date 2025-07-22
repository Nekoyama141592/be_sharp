import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class OriginalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OriginalAppBar({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text ?? 'BeSharp.',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.text,
        ),
      ),
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColors.text,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
