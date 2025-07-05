import 'package:be_sharp/application/flavors.dart';
import 'package:be_sharp/presentation/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  static const path = "/";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: F.title,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
