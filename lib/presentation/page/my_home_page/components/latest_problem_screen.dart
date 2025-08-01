import 'package:be_sharp/core/util/route_util.dart';
import 'package:be_sharp/domain/entity/database/user_answer/user_answer_entity.dart';
import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/latest_problem/latest_problem_view_model.dart';
import 'package:be_sharp/presentation/util/format_ui_util.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/common/dialog/form_dialog.dart';
import 'package:be_sharp/presentation/common/dialog/rank_dialog.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LatestProblemScreen extends ConsumerWidget {
  const LatestProblemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(latestProblemViewModelProvider);
    LatestProblemViewModel notifier() =>
        ref.read(latestProblemViewModelProvider.notifier);

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

  Widget _buildContent(
      BuildContext context,
      ProblemEntity? problem,
      UserAnswerEntity? userAnswer,
      LatestProblemViewModel Function() notifier) {
    if (problem == null) {
      return _buildCenteredMessage('問題が存在しません');
    } else if (userAnswer == null) {
      final isInTime = problem.isInTimeLimit();
      final text = '最新の問題に${isInTime ? '回答(まだ間に合います！)' : '遅れて回答'}';
      return _buildCenteredButton(text, () {
        final path = notifier().getAnswerPagePath();
        if (path != null) {
          RouteUtil.pushPath(context, path);
        }
      });
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
          color: AppColors.text,
        ),
      ),
    );
  }

  Widget _buildCenteredButton(String text, VoidCallback onPressed) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.card,
          foregroundColor: AppColors.text,
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

  Widget _buildQuizResult(BuildContext context, ProblemEntity problem,
      UserAnswerEntity userAnswer, LatestProblemViewModel Function() notifier) {
    final isCorrect = userAnswer.isCorrect(problem);
    final isInTime = userAnswer.isInTime(problem);
    final answerTime = userAnswer.getDifference(problem);
    final caption = userAnswer.caption;
    final isCaptionExists = caption != null;
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title(),
              style: GoogleFonts.notoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.text,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        '問題',
                        style: GoogleFonts.notoSans(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.premiumInfo,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        problem.question,
                        style: GoogleFonts.notoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(problem.latex,
                          style: GoogleFonts.notoSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppColors.text,
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
                    FormatUIUtil.formatDuration(problem.timeLimitDuration()),
                    isInTime),
                const SizedBox(width: 20),
                _buildAnswerSection(context, '回答時間',
                    FormatUIUtil.formatDuration(answerTime), isInTime),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OriginalButton(
                    onPressed: () async {
                      final rank = await notifier().getRankForDialog();
                      if (rank != null && context.mounted) {
                        showDialog(
                          context: context,
                          builder: (innerContext) => RankDialog(rank: rank),
                        );
                      }
                    },
                    isPaid: false,
                    labelText: 'ランキング',
                    iconData: Icons.star),
                const SizedBox(
                  width: 16.0,
                ),
                OriginalButton(
                  onPressed: () {
                    if (notifier().canShowCaptionDialog) {
                      showDialog(
                        context: context,
                        builder: (innerContext) => FormDialog(
                          initialValue: notifier().initialCaptionValue,
                          onSend: (caption) async {
                            Navigator.pop(context);
                            await notifier().onSendCaption(caption);
                          },
                        ),
                      );
                    }
                  },
                  isPaid: true,
                  labelText: 'キャプション',
                  iconData: isCaptionExists ? Icons.edit : Icons.add_comment,
                ),
              ],
            ),
            if (isCaptionExists)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  caption.value,
                  style: GoogleFonts.notoSans(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
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
    Color resultColor() {
      return isValid ? AppColors.premiumSuccess : Colors.redAccent;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: resultColor(),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: resultColor(),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.text,
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
  const OriginalButton({
    super.key,
    this.onPressed,
    required this.isPaid,
    required this.labelText,
    required this.iconData,
  });

  final void Function()? onPressed;
  final bool isPaid; // 有料機能か
  final String labelText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.38,
      child:
          isPaid ? _buildPremiumButton(context) : _buildRegularButton(context),
    );
  }

  Widget _buildRegularButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData),
      label: Text(
        labelText,
        style: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.card,
        foregroundColor: AppColors.text,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget _buildPremiumButton(BuildContext context) {
    const childColor = Color(0xFFFFD700);
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFAD1457), // 深い紫色
            Color(0xFFD81B60), // 鮮やかなピンク
            Color(0xFFE91E63), // ピンク
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withValues(alpha: 0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: childColor,
        ),
        label: Text(
          labelText,
          style: GoogleFonts.notoSans(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
            color: childColor,
            shadows: [
              Shadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
