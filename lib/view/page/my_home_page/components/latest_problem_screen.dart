import 'package:be_sharp/provider/view_model/latest_problem_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LatestProblemScreen extends ConsumerWidget {
  const LatestProblemScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(latestProblemProvider);
    LatestProblemViewModel notifier() =>
        ref.read(latestProblemProvider.notifier);
    return AsyncScreen(
        asyncValue: asyncValue,
        data: (state) {
          final problem = state.problem;
          final userAnswer = state.userAnswer;
          if (problem == null) {
            return const BasicPage(
                child: Align(
              alignment: Alignment.center,
              child: Text('問題が存在しません'),
            ));
          } else if (userAnswer == null) {
            return BasicPage(
                child: Align(
              alignment: Alignment.center,
              child: RoundedButton(
                text: '最新の問題に回答',
                press: notifier().onToAnswerPageButtonPressed,
              ),
            ));
          } else {
            return BasicPage(child: Builder(builder: (context) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('問題'),
                    Text(problem.question),
                    const Text('自分の回答'),
                    Text(userAnswer.answer),
                    RoundedButton(
                      text: 'キャプションを追加',
                      press: notifier().onCaptionButtonPressed,
                    )
                  ],
                ),
              );
            }));
          }
        });
  }
}
