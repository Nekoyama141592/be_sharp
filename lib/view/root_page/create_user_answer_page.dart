import 'dart:async';

import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/provider/view_model/create_user_answer_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/state/abstract/simple_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateUserAnswerPage extends ConsumerStatefulWidget {
  const CreateUserAnswerPage({super.key});
  static const path = '/problems/:problemId/createUserAnswer';
  static String generatePath(String problemId) =>
      '/problems/$problemId/createUserAnswer';
  @override
  ConsumerState<CreateUserAnswerPage> createState() => _CreateUserAnswerState();
}

class _CreateUserAnswerState extends SimpleFormState<CreateUserAnswerPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(createUserAnswerProvider.notifier);
    final asyncValue = ref.watch(createUserAnswerProvider);

    return BasicPage(
      appBarText: '',
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
            opacity: _animation,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QuestionCard(state: state),
                    const SizedBox(height: 30),
                    AnswerForm(child: form(notifier)),
                    const SizedBox(height: 20),
                    SubmitButton(notifier: notifier),
                  ],
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

  const QuestionCard({Key? key, required this.state}) : super(key: key);

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
                style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                '制限時間: ${state.timeLimitSeconds}秒',
                style: GoogleFonts.roboto(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              Text(
                '回答期限: ${state.timeLimitDateText()}',
                style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey[600]),
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

  const CountdownTimer({Key? key, required this.seconds}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
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
      style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}

class AnswerForm extends StatelessWidget {
  final Widget child;
  const AnswerForm({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: child,
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final CreateUserAnswerViewModel notifier;

  const SubmitButton({Key? key, required this.notifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: notifier.onPositiveButtonPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        '回答を送信',
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

