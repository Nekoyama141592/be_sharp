import 'package:be_sharp/provider/view_model/problems_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProblemsScreen extends ConsumerWidget {
  const ProblemsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(problemsProvider);
    ProblemsViewModel notifier() => ref.read(problemsProvider.notifier);
    return AsyncScreen(
        asyncValue: asyncValue,
        data: (state) => BasicPage(
                child: ListView(
              children: state
                  .map((e) => ListTile(
                        title: Text(e.question),
                        onTap: () => notifier().onCardTap(e),
                      ))
                  .toList(),
            )));
  }
}
