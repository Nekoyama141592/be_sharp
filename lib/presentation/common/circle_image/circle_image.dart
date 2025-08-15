import 'package:be_sharp/core/util/image_url_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
      {super.key, this.width, this.height, required this.uid, this.onTap,required this.imageKey});
  final String uid;
  final String imageKey;
  final double? width, height;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  shape: BoxShape.circle),
              child: ClipOval(
                child: SizedBox(
                  width: width,
                  height: width,
                  child: CachedNetworkImage(
                    imageUrl: ImageUrlUtil.getUserImageUrl(uid: uid, key: imageKey),
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
            ),
    );
  }
}
