import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/view/page/error_page.dart';
import 'package:be_sharp/view/page/loading_page.dart';

class AsyncScreen<T> extends StatelessWidget {
  const AsyncScreen({super.key,required this.asyncValue,required this.data});
  final AsyncValue<T> asyncValue;
  final Widget Function(T) data;
  @override
  Widget build(BuildContext context) {
    return asyncValue.when(data: data, error: (e,s) => ErrorPage(e: e,), loading: () => const LoadingPage());
  }
}