import 'package:be_sharp/constants/colors.dart';
import 'package:be_sharp/provider/view_model/home_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/original_drawer.dart';
import 'package:be_sharp/view/page/my_home_page/components/home_screen/components/ranking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(homeProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: const OriginalDrawer(),
      body: AsyncScreen(
        asyncValue: asyncValue,
        data: (state) {
          final users = state.answeredUsers;
          final problem = state.latestProblem;
          if (problem == null) {
            return const Center(
              child: Text(
                '問題が存在しません',
                style: TextStyle(fontSize: 18, color: AppColors.text),
              ),
            );
          }
          if (problem.answers.isEmpty) {
            return const Center(
              child: Text(
                'ランキング集計中です',
                style: TextStyle(fontSize: 18, color: AppColors.text),
              ),
            );
          }
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    '正解者TOP10',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final e = users[index];
                    final user = e.publicUser;
                    return AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: 1,
                      child: RankingCard(
                        rank: index + 1,
                        userName: user.nickNameValue(),
                        answerTime: e.userAnswer.getDifference(problem),
                        userImage: MemoryImage(e.userImage),
                        caption: e.userAnswer.caption,
                        isInTime: e.userAnswer.isInTime(problem),
                      ),
                    );
                  },
                  childCount: users.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
