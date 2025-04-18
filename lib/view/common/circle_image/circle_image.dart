import 'dart:typed_data';

import 'package:be_sharp/view/common/circle_image/components/s3_image.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {super.key,
      this.width,
      this.height,
      required this.uint8list,
      this.onTap});
  final Uint8List? uint8list;
  final double? width, height;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: uint8list == null
          ? Icon(
              Icons.image,
              size: width,
            )
          : S3Image(
              uint8list: uint8list!,
              width: width,
            ),
    );
  }
}
