import 'dart:async';

import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/create_user_answer/create_user_answer_view_model.dart';
import 'package:be_sharp/presentation/util/validator_ui_util.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CreateUserAnswerPage extends HookConsumerWidget {
  CreateUserAnswerPage({super.key, @pathParam this.problemId});
  final String? problemId;
  static const path = '/problems/:problemId/createUserAnswer';
  static String generatePath(String problemId) =>
      '/problems/$problemId/createUserAnswer';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final problemId = this.problemId ??
        context.routeData.inheritedPathParams.getString('problemId');
    final notifier =
        ref.read(createUserAnswerViewModelProvider(problemId).notifier);
    final asyncValue = ref.watch(createUserAnswerViewModelProvider(problemId));
    final textController = useTextEditingController();
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    )..forward();

    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );
    Widget submitButton() {
      return ElevatedButton(
        onPressed: () {
          final isValid = formKey.currentState!.validate();
          if (!isValid) return;
          final answer = textController.text;
          notifier.onPositiveButtonPressed(context, answer);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Text(
          '回答を送信',
          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    }

    return BasicPage(
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade900, Colors.purple.shade900],
            ),
          ),
          child: AsyncScreen(
            asyncValue: asyncValue,
            data: (state) => FadeTransition(
              opacity: animation,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (state != null) QuestionCard(state: state),
                          const SizedBox(height: 30),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: TextFormField(
                                  controller: textController,
                                  decoration: const InputDecoration(
                                    labelText: '回答',
                                  ),
                                  validator: ValidatorUIUtil.number,
                                  keyboardType: TextInputType.text,
                                ),
                              )),
                          const SizedBox(height: 20),
                          submitButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final ProblemEntity state;

  const QuestionCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final seconds = state.leftTime().inSeconds;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                state.question,
                style: GoogleFonts.roboto(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                state.latex,
                style: GoogleFonts.roboto(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Divider(),
              Text(
                '制限時間: ${state.timeLimitSeconds}秒',
                style:
                    GoogleFonts.roboto(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              Text(
                '回答期限: ${state.timeLimitDateText()}',
                style:
                    GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),
              CountdownTimer(seconds: seconds),
            ],
          ),
        ),
      ),
    );
  }
}

class CountdownTimer extends HookWidget {
  final int seconds;

  const CountdownTimer({super.key, required this.seconds});

  @override
  Widget build(BuildContext context) {
    final currentSeconds = useState(seconds);
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (currentSeconds.value > 0) {
          currentSeconds.value--;
        } else {
          timer.cancel();
        }
      });
      return timer.cancel;
    }, const []);

    return Text(
      currentSeconds.value > 0 ? '残り時間: ${currentSeconds.value}秒' : 'タイムアップです',
      style: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
