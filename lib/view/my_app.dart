import 'package:be_sharp/flavors.dart';
import 'package:be_sharp/view/page/check_page.dart';
import 'package:be_sharp/view/page/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const path = "/";
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: GetMaterialApp(
          title: F.title,
          debugShowCheckedModeBanner: false,
          getPages: getPages,
          initialRoute: path,
          home: const CheckPage(
            child: MyHomePage(),
          )),
    );
  }
}

final getPages = [GetPage(name: MyApp.path, page: () => const MyApp())];
