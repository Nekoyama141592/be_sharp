import 'dart:convert';

import 'package:be_sharp/presentation/common/circle_image/components/s3_image.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {super.key, this.width, this.height, required this.image, this.onTap});
  final String? image;
  final double? width, height;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: image == null
          ? Icon(
              Icons.image,
              size: width,
            )
          : S3Image(
              uint8list: base64Decode(image!),
              width: width,
            ),
    );
  }
}
