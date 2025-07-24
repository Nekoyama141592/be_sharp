import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/util/format_ui_util.dart';
import 'package:flutter/material.dart';

class RankingCard extends StatelessWidget {
  final bool isMute;
  final int rank;
  final PublicUserEntity user;
  final Duration answerTime;
  final ImageProvider userImage;
  final String? caption;
  final bool isInTime;
  final void Function()? onMoreButtonPressed;

  const RankingCard(
      {super.key,
      required this.isMute,
      required this.rank,
      required this.user,
      required this.answerTime,
      required this.userImage,
      required this.caption,
      required this.isInTime,
      required this.onMoreButtonPressed});

  @override
  Widget build(BuildContext context) {
    final userName = user.nickNameValue() ?? '';
    final isInvalidNickName =
        user.registeredInfo?.nickName.isInvalid() ?? false;
    final isInvalidImage = user.registeredInfo?.image.isInvalid() ?? false;

    if (isInvalidNickName || isInvalidImage || isMute) {
      String reason = '';
      if (isInvalidNickName) {
        reason += 'ニックネームが不適切';
      }
      if (isInvalidNickName && isInvalidImage) {
        reason += 'かつ、';
      }
      if (isInvalidImage) {
        reason += '画像が不適切(理由: ${user.registeredInfo?.image.reason() ?? '不明'})';
      }
      reason += 'なユーザー';
      if (isMute) {
        reason = 'ミュートしているユーザー';
      }

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            reason,
            style: const TextStyle(
              color: AppColors.textLight,
              fontSize: 14,
            ),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.border,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          _buildRankNumber(),
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 20,
            backgroundImage: userImage,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    color: AppColors.text,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  FormatUIUtil.formatDurationWithResult(answerTime, isInTime),
                  style: const TextStyle(
                    color: AppColors.textLight,
                    fontSize: 14,
                  ),
                ),
                if (caption?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text(
                    caption!,
                    style: const TextStyle(
                      color: AppColors.textLight,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          IconButton(
            onPressed: onMoreButtonPressed,
            icon: const Icon(
              Icons.more_horiz,
              color: AppColors.textLight,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRankNumber() {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getRankColor(),
      ),
      child: Center(
        child: Text(
          '$rank',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.background,
          ),
        ),
      ),
    );
  }

  Color _getRankColor() {
    switch (rank) {
      case 1:
        return const Color(0xFFFFD700);
      case 2:
        return const Color(0xFFC0C0C0);
      case 3:
        return const Color(0xFFCD7F32);
      default:
        return AppColors.textLight;
    }
  }
}
