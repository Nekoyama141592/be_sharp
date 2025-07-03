// material
import 'package:be_sharp/core/util/padding_util.dart';
import 'package:be_sharp/presentation/common/texts.dart';
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
    final vertical = PaddingUtil.vertical(context);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * widthRate,
      child: Container(
        decoration: borderColor != null
            ? BoxDecoration(
                border: Border.all(color: borderColor!),
                borderRadius: BorderRadius.circular(vertical))
            : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(vertical),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                    buttonColor ?? Theme.of(context).primaryColor),
              ),
              onPressed: press,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: vertical / 2.0, horizontal: vertical / 2.0),
                child: icon != null
                    ? Row(
                        children: [
                          icon!,
                          const SizedBox(
                            width: 20.0,
                          ),
                          BasicBoldText(
                            text,
                            textColor: textColor,
                          )
                        ],
                      )
                    : BasicBoldText(
                        text,
                        textColor: textColor ?? Colors.white,
                      ),
              )),
        ),
      ),
    );
  }
}
