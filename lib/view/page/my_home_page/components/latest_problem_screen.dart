import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/provider/view_model/latest_problem_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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

        return BasicPage(
          showAppBar: false,
          child: Container(
            width: double.infinity,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [Colors.blue.shade300, Colors.purple.shade300],
            //   ),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _buildContent(context, problem, userAnswer, notifier),
            ),
          ),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, ReadProblem? problem,
      ReadUserAnswer? userAnswer, LatestProblemViewModel Function() notifier) {
    if (problem == null) {
      return _buildCenteredMessage('問題が存在しません');
    } else if (userAnswer == null) {
      return _buildCenteredButton('最新の問題に回答', notifier().onToAnswerPageButtonPressed);
    } else {
      return _buildQuizResult(context, problem, userAnswer, notifier);
    }
  }

  Widget _buildCenteredMessage(String message) {
    return Center(
      child: Text(
        message,
        style: GoogleFonts.notoSans(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCenteredButton(String text, VoidCallback onPressed) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue.shade700,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.notoSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildQuizResult(BuildContext context, ReadProblem problem,
      ReadUserAnswer userAnswer, LatestProblemViewModel Function() notifier) {
    final isCorrect = problem.answers.contains(userAnswer.answer);
    if (problem.answers.isEmpty) {
      return const Align(
        alignment: Alignment.center,
        child: Text('ただいま正誤を判定中です'),
      );
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Text(
            isCorrect ? '正解です！' : '残念、不正解です、、、',
            style: GoogleFonts.notoSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    '問題',
                    style: GoogleFonts.notoSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    problem.question,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildAnswerSection('正解', problem.answers.isEmpty ? '集計中' : problem.answers.join(','), isCorrect),
          const SizedBox(height: 20),
          _buildAnswerSection('あなたの回答', userAnswer.answer, isCorrect),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: notifier().onCaptionButtonPressed,
            icon: const Icon(Icons.add_comment),
            label: Text(
              'キャプションを追加',
              style: GoogleFonts.notoSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue.shade700,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildAnswerSection(String title, String content, bool isCorrect) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: isCorrect ? Colors.green.shade50 : Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.notoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isCorrect ? Colors.green.shade700 : Colors.red.shade700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: GoogleFonts.notoSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}