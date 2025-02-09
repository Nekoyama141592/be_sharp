import 'dart:async';

import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/view_model/create_user_answer_view_model.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/latex_text.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateUserAnswerPage extends HookConsumerWidget {
  CreateUserAnswerPage({super.key});
  static const path = '/problems/:problemId/createUserAnswer';
  static String generatePath(String problemId) =>
      '/problems/$problemId/createUserAnswer';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(createUserAnswerProvider.notifier);
    final asyncValue = ref.watch(createUserAnswerProvider);
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
          notifier.onPositiveButtonPressed(answer);
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuestionCard(state: state),
                      const SizedBox(height: 30),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: textController,
                              decoration: const InputDecoration(
                                labelText: '回答',
                              ),
                              validator: ValidatorUICore.number,
                              keyboardType: TextInputType.number,
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
    );
  }
}

class QuestionCard extends StatelessWidget {
  final ReadProblem state;

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
                style: GoogleFonts.roboto(
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              LatexText(
                data: state.latex,
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

class CountdownTimer extends StatefulWidget {
  final int seconds;

  const CountdownTimer({super.key, required this.seconds});

  @override
  CountdownTimerState createState() => CountdownTimerState();
}

class CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  late int _currentSeconds;

  @override
  void initState() {
    super.initState();
    _currentSeconds = widget.seconds;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_currentSeconds > 0) {
          _currentSeconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _currentSeconds > 0 ? '残り時間: $_currentSeconds秒' : 'タイムアップです',
      style: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
