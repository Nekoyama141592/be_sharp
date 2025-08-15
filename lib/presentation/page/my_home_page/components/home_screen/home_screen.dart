import 'dart:convert';

import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/home/home_view_model.dart';
import 'package:be_sharp/presentation/common/drawer/original_drawer.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/home_screen/components/ranking_card.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/home_screen/components/ranking_card_skeleton.dart';
import 'package:be_sharp/presentation/state/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:be_sharp/presentation/state/view_model_state/home_state/home_state.dart';
import 'package:be_sharp/presentation/util/format_ui_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(homeViewModelProvider);
    HomeViewModel notifier() => ref.read(homeViewModelProvider.notifier);
    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: const OriginalDrawer(),
      body: asyncValue.when(
        loading: _buildLoadingState,
        error: (error, stackTrace) => const Center(
          child: Text(
            'エラーが発生しました',
            style: TextStyle(color: AppColors.text),
          ),
        ),
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
                    '正解者TOP10(回答者数: ${state.userCount})',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text,
                    ),
                  ),
                ),
              ),
              if (users.length >= 3) ...[
                SliverToBoxAdapter(
                  child: _buildPodium(
                      users.take(3).toList(), problem, state, notifier),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
              ],
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final actualIndex = users.length >= 3 ? index + 3 : index;
                    final e = users[actualIndex];
                    final user = e.publicUser;
                    final isMute = state.isMute(user.uid);
                    return AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: 1,
                      child: RankingCard(
                        isMute: isMute,
                        rank: actualIndex + 1,
                        user: user,
                        answerTime: e.userAnswer.getDifference(problem),
                        userImage: MemoryImage(base64Decode(e.userImage!)),
                        caption: e.userAnswer.caption?.value,
                        isInTime: e.userAnswer.isInTime(problem),
                        onMoreButtonPressed: () => notifier()
                            .onMoreButtonPressed(context, e.userAnswer.uid),
                      ),
                    );
                  },
                  childCount:
                      users.length >= 3 ? users.length - 3 : users.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPodium(List<AnsweredUser> topThree, ProblemEntity problem,
      HomeState state, HomeViewModel Function() notifier) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 2nd place
              if (topThree.length > 1)
                _buildPodiumPosition(
                  topThree[1],
                  2,
                  80,
                  problem,
                  state,
                  notifier,
                ),
              const SizedBox(width: 12),
              // 1st place
              _buildPodiumPosition(
                topThree[0],
                1,
                100,
                problem,
                state,
                notifier,
              ),
              const SizedBox(width: 12),
              // 3rd place
              if (topThree.length > 2)
                _buildPodiumPosition(
                  topThree[2],
                  3,
                  60,
                  problem,
                  state,
                  notifier,
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPodiumPosition(
    AnsweredUser entry,
    int rank,
    double height,
    ProblemEntity problem,
    HomeState state,
    HomeViewModel Function() notifier,
  ) {
    final user = entry.publicUser;
    final isMute = state.isMute(user.uid);
    final userName = user.nickNameValue() ?? '';
    final isInvalidNickName =
        user.registeredInfo?.nickName.isInvalid() ?? false;
    return Expanded(
      child: Column(
        children: [
          // Medal/Crown
          Container(
            width: 32,
            height: 32,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _getPodiumRankColor(rank),
            ),
            child: Center(
              child: rank == 1
                  ? const Icon(
                      Icons.emoji_events,
                      color: Colors.white,
                      size: 18,
                    )
                  : Text(
                      '$rank',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
          // User avatar
          if (!isMute)
            Container(
              width: rank == 1 ? 56 : 48,
              height: rank == 1 ? 56 : 48,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: _getPodiumRankColor(rank),
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: rank == 1 ? 25 : 21,
                backgroundImage: MemoryImage(base64Decode(entry.userImage!)),
              ),
            )
          else
            Container(
              width: rank == 1 ? 56 : 48,
              height: rank == 1 ? 56 : 48,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.surface,
                border: Border.all(
                  color: _getPodiumRankColor(rank),
                  width: 3,
                ),
              ),
              child: Icon(
                Icons.person,
                color: AppColors.textLight,
                size: rank == 1 ? 24 : 20,
              ),
            ),
          // User name
          if (!isInvalidNickName && !isMute)
            Text(
              userName,
              style: TextStyle(
                color: AppColors.text,
                fontSize: rank == 1 ? 14 : 12,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          else
            Text(
              isMute ? 'ミュート中' : '不適切な名前',
              style: TextStyle(
                color: AppColors.textLight,
                fontSize: rank == 1 ? 14 : 12,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 4),
          // Answer time
          Text(
            FormatUIUtil.formatDurationWithResult(
              entry.userAnswer.getDifference(problem),
              entry.userAnswer.isInTime(problem),
            ),
            style: TextStyle(
              color: AppColors.textLight,
              fontSize: rank == 1 ? 12 : 10,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          // Podium base
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              border: Border.all(
                color: _getPodiumRankColor(rank),
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                '$rank',
                style: TextStyle(
                  fontSize: rank == 1 ? 24 : 20,
                  fontWeight: FontWeight.bold,
                  color: _getPodiumRankColor(rank),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getPodiumRankColor(int rank) {
    switch (rank) {
      case 1:
        return const Color(0xFFFFD700); // Gold
      case 2:
        return const Color(0xFFC0C0C0); // Silver
      case 3:
        return const Color(0xFFCD7F32); // Bronze
      default:
        return AppColors.textLight;
    }
  }

  Widget _buildLoadingState() {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 18,
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: _buildPodiumSkeleton(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 24),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => const RankingCardSkeleton(),
            childCount: 7,
          ),
        ),
      ],
    );
  }

  Widget _buildPodiumSkeleton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 2nd place skeleton
              _buildPodiumPositionSkeleton(2, 80),
              const SizedBox(width: 12),
              // 1st place skeleton
              _buildPodiumPositionSkeleton(1, 100),
              const SizedBox(width: 12),
              // 3rd place skeleton
              _buildPodiumPositionSkeleton(3, 60),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPodiumPositionSkeleton(int rank, double height) {
    return Expanded(
      child: Column(
        children: [
          // Medal/Crown skeleton
          Container(
            width: 32,
            height: 32,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.surface,
            ),
          ),
          // User avatar skeleton
          Container(
            width: rank == 1 ? 56 : 48,
            height: rank == 1 ? 56 : 48,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.surface,
              border: Border.all(
                color: AppColors.border,
                width: 3,
              ),
            ),
          ),
          // User name skeleton
          Container(
            height: rank == 1 ? 14 : 12,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          // Answer time skeleton
          Container(
            height: rank == 1 ? 12 : 10,
            width: 60,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          // Podium base skeleton
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              border: Border.all(
                color: AppColors.border,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
