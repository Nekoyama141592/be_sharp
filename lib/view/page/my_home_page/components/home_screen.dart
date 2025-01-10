import 'package:be_sharp/provider/view_model/home_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/circle_image/circle_image.dart';
import 'package:be_sharp/view/common/original_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(homeProvider);
    return Scaffold(
      appBar: AppBar(),
      drawer: const OriginalDrawer(),
      body: AsyncScreen(
          asyncValue: asyncValue,
          data: (qDocInfoList) {
            return ListView(
                children: qDocInfoList.map((e) {
              final user = e.publicUser;
              return ListTile(
                title: Text(user.nickNameValue()),
                subtitle: Text(user.bioValue()),
                leading: CircleImage(uint8list: e.userImage),
              );
            }).toList());
          }),
    );
  }
}
