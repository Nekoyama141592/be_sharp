import 'package:be_sharp/view/common/basic_height_box.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
          ),
          BasicHeightBox(),
          Text("通信中...")
        ],
      ),
    );
  }
}
