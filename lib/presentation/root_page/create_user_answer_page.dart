import 'dart:async';

import 'package:be_sharp/core/util/route_util.dart';
import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/create_user_answer/create_user_answer_view_model.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/latest_problem/latest_problem_view_model.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/presentation/util/validator_ui_util.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CreateUserAnswerPage extends HookConsumerWidget {
  CreateUserAnswerPage({super.key, @pathParam this.problemId = ''});
  final String problemId;
  static const path = '/problems/:problemId/createUserAnswer';
  static String generatePath(String problemId) =>
      '/problems/$problemId/createUserAnswer';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier =
        ref.read(createUserAnswerViewModelProvider(problemId).notifier);
    final asyncValue = ref.watch(createUserAnswerViewModelProvider(problemId));
    final textController = useTextEditingController();
    Widget submitButton() {
      return Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.text,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ElevatedButton(
          onPressed: () async {
            final isValid = formKey.currentState!.validate();
            if (!isValid) return;
            final answer = textController.text;
            final result =
                await notifier.onPositiveButtonPressed(context, answer);
            result.when(success: (_) {
              RouteUtil.back(context);
              ref.invalidate(latestProblemViewModelProvider);
              notifier.requestReview();
            }, failure: (msg) {
              ToastUiUtil.showErrorFlutterToast(msg);
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            '回答を送信',
            style: GoogleFonts.notoSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.background,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: AsyncScreen(
            asyncValue: asyncValue,
            data: (state) => SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Text(
                      '問題に回答',
                      style: GoogleFonts.notoSans(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: AppColors.text,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '下記の問題に回答してください',
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: AppColors.textLight,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Question Card
                    if (state != null) QuestionCard(state: state),
                    const SizedBox(height: 32),

                    // Answer Input
                    Text(
                      'あなたの答え',
                      style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.border,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: textController,
                          style: GoogleFonts.notoSans(
                            fontSize: 18,
                            color: AppColors.text,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: '答えを入力してください',
                            hintStyle: GoogleFonts.notoSans(
                              color: AppColors.textLight,
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                          ),
                          validator: ValidatorUIUtil.number,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Submit Button
                    submitButton(),
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
  final ProblemEntity state;

  const QuestionCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final seconds = state.leftTime().inSeconds;
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question text
          Text(
            state.question,
            style: GoogleFonts.notoSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.text,
            ),
          ),
          const SizedBox(height: 16),

          // Math expression
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                state.latex,
                style: GoogleFonts.notoSans(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Time info
          Row(
            children: [
              Expanded(
                child: _buildInfoItem(
                  '制限時間',
                  '${state.timeLimitSeconds}秒',
                  Icons.timer_outlined,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildInfoItem(
                  '回答期限',
                  state.timeLimitDateText(),
                  Icons.schedule_outlined,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Countdown timer
          Center(
            child: CountdownTimer(seconds: seconds),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: AppColors.textLight,
            size: 20,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: GoogleFonts.notoSans(
              fontSize: 12,
              color: AppColors.textLight,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: GoogleFonts.notoSans(
              fontSize: 14,
              color: AppColors.text,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
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

    final isTimeUp = currentSeconds.value <= 0;
    final isUrgent = currentSeconds.value <= 30;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isTimeUp
            ? Colors.red.withValues(alpha: 0.1)
            : isUrgent
                ? Colors.orange.withValues(alpha: 0.1)
                : AppColors.premiumInfo.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isTimeUp
              ? Colors.red
              : isUrgent
                  ? Colors.orange
                  : AppColors.premiumInfo,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isTimeUp ? Icons.timer_off : Icons.access_time,
            color: isTimeUp
                ? Colors.red
                : isUrgent
                    ? Colors.orange
                    : AppColors.premiumInfo,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            currentSeconds.value > 0 ? '残り ${currentSeconds.value}秒' : 'タイムアップ',
            style: GoogleFonts.notoSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isTimeUp
                  ? Colors.red
                  : isUrgent
                      ? Colors.orange
                      : AppColors.premiumInfo,
            ),
          ),
        ],
      ),
    );
  }
}
