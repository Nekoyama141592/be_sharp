import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/provider/view_model/latest_problem_view_model.dart';
import 'package:be_sharp/ui_core/format_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/latex_text.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildContent(context, problem, userAnswer, notifier),
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
      final isInTime = problem.isInTimeLimit();
      final text = '最新の問題に${isInTime ? '回答(まだ間に合います！)' : '遅れて回答'}';
      return _buildCenteredButton(
          text, notifier().onToAnswerPageButtonPressed);
    } else if (problem.answers.isEmpty) {
      return _buildCenteredMessage('回答時間中...');
    } else {
      return _buildQuizResult(context, problem, userAnswer, notifier);
    }
  }

  Widget _buildCenteredMessage(String message) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        message,
        style: GoogleFonts.notoSans(
          fontSize: 36,
          fontWeight: FontWeight.w500,
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
    final isCorrect = userAnswer.isCorrect(problem);
    final isInTime = userAnswer.isInTime(problem);
    final answerTime = userAnswer.getDifference(problem);
    final isCaptionExists = userAnswer.caption.isNotEmpty;
    String title() {
      if (isCorrect) {
        return isInTime
            ? 'おめでとうございます！制限時間以内に正解したのでクリアです！'
            : '正解です！次は制限時間以内に正解できるように頑張りましょう！';
      } else {
        return '残念、不正解です、、、';
      }
    }

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title(),
              style: GoogleFonts.notoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
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
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        problem.question,
                        style: GoogleFonts.notoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      LatexText(
                          data: problem.latex,
                          style: GoogleFonts.notoSans(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildAnswerSection(
                  context, '正解', problem.answers.join(','), isCorrect),
              const SizedBox(width: 20),
              _buildAnswerSection(context, '回答', userAnswer.answer, isCorrect),
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAnswerSection(
                    context,
                    '制限時間',
                    FormatUICore.formatDuration(problem.timeLimitDuration()),
                    isInTime),
                const SizedBox(width: 20),
                _buildAnswerSection(context, '回答時間',
                    FormatUICore.formatDuration(answerTime), isInTime),
              ],
            ),
            const SizedBox(height: 30),
            OriginalButton(
              onPressed: notifier().onCaptionButtonPressed,
              labelText: 'キャプションを${isCaptionExists ? '編集' : '追加'}',
              iconData: Icons.add_comment,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: OriginalButton(
                  onPressed: notifier().onRankingButtonPressed,
                  labelText: '自分の順位を見る',
                  iconData: Icons.star),
            ),
            if (isCaptionExists)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  userAnswer.caption,
                  style: GoogleFonts.notoSans(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerSection(
      BuildContext context, String title, String content, bool isValid) {
    MaterialColor resultColor() {
      return isValid ? Colors.green : Colors.red;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: resultColor().shade50,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.notoSans(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: resultColor().shade700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                content,
                style: GoogleFonts.notoSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OriginalButton extends StatelessWidget {
  const OriginalButton(
      {super.key,
      this.onPressed,
      required this.labelText,
      required this.iconData});
  final void Function()? onPressed;
  final String labelText;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData),
      label: Text(
        labelText,
        style: GoogleFonts.notoSans(
          fontSize: 18,
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
    );
  }
}
