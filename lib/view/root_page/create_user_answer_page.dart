import 'package:be_sharp/provider/view_model/create_user_answer_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/state/abstract/simple_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateUserAnswerPage extends ConsumerStatefulWidget {
  const CreateUserAnswerPage({super.key});
  static const path = '/problems/:problemId/createUserAnswer';
  static String generatePath(String problemId) =>
      '/problems/$problemId/createUserAnswer';
  @override
  ConsumerState<CreateUserAnswerPage> createState() => _CreateUserAnswerState();
}

class _CreateUserAnswerState extends SimpleFormState<CreateUserAnswerPage> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(createUserAnswerProvider.notifier);
    final asyncValue = ref.watch(createUserAnswerProvider);
    return BasicPage(
        appBarText: '',
        child: AsyncScreen(
            asyncValue: asyncValue,
            data: (state) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '${state.question}\n${state.timeLimitDateText()}までに解け'),
                      titleWidget(notifier),
                      form(notifier),
                      positiveButton(notifier),
                    ],
                  ),
                )));
  }
}
