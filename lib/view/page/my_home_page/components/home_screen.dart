import 'package:be_sharp/provider/view_model/home_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/circle_image/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final asyncValue = ref.watch(homeProvider);
    return AsyncScreen(asyncValue: asyncValue, data: (image) {
      return Align(
        alignment: Alignment.center,
        child: CircleImage(
          uint8list: image,
        ),
      );
    } );
  }
}