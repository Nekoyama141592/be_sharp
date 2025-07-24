import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.text,
      this.press,
      this.buttonColor,
      this.textColor,
      this.icon,
      this.widthRate = 0.85,
      this.borderColor});

  final String text;
  final double widthRate;
  final Function()? press;
  final Color? buttonColor, textColor;
  final Widget? icon;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * widthRate,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? AppColors.primary,
            foregroundColor: textColor ?? AppColors.background,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: borderColor != null
                  ? BorderSide(color: borderColor!, width: 1)
                  : BorderSide.none,
            ),
          ),
          onPressed: press,
          child: icon != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    icon!,
                    const SizedBox(width: 12),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textColor ?? AppColors.background,
                      ),
                    ),
                  ],
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor ?? AppColors.background,
                  ),
                )),
    );
  }
}
