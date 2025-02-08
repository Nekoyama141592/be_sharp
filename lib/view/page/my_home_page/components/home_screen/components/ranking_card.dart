import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/ui_core/format_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingCard extends StatelessWidget {
  final bool isMute;
  final int rank;
  final ReadPublicUser user;
  final Duration answerTime;
  final ImageProvider userImage;
  final String caption;
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
    final userName = user.nickNameValue();
    final isInvalidNickName = user.registeredInfo.typedNickName().isInvalid();
    final isInvalidImage = user.registeredInfo.typedImage().isInvalid();
    if (isInvalidNickName || isInvalidImage || isMute) {
      String reason = '';
      if (isInvalidNickName) {
        reason += 'ニックネームが不適切';
      }
      if (isInvalidImage && isInvalidImage) {
        reason += 'かつ、';
      }
      if (isInvalidImage) {
        reason += '画像が不適切(理由: ${user.registeredInfo.typedImage().reason()})';
      }
      reason += 'なユーザー';
      if (isMute) {
        reason = 'ミュートしているユーザー';
      }
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 100,
          color: Colors.black,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              reason,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
    }
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Opacity(
            opacity: value,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      _getGradientColors(rank)[0],
                      _getGradientColors(rank)[1],
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -20,
                      left: -20,
                      child: Icon(
                        Icons.star,
                        size: 100,
                        color: _userTextColor().withOpacity(0.2),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 24,
                      child: InkWell(
                        onTap: onMoreButtonPressed,
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          _buildRankCircle(),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildUserInfo(userName),
                                const SizedBox(height: 8),
                                _buildAnswerTime(),
                                if (caption.isNotEmpty) ...[
                                  const SizedBox(height: 8),
                                  _buildCaption(),
                                ],
                              ],
                            ),
                          ),
                          _buildTrophy(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  bool _isTopUser() => rank == 1 || rank == 2;
  Color _userTextColor() => _isTopUser() ? Colors.black87 : Colors.white;
  Widget _buildRankCircle() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '$rank',
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: _getGradientColors(rank)[1],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo(String userName) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: userImage,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            userName,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildAnswerTime() {
    return Row(
      children: [
        Icon(Icons.timer, color: _userTextColor(), size: 24),
        const SizedBox(width: 4),
        Text(
          FormatUICore.formatDurationWithResult(answerTime, isInTime),
          style: GoogleFonts.roboto(
            color: _userTextColor(),
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildCaption() {
    return Text(
      caption,
      style: GoogleFonts.roboto(
        color: _userTextColor(),
        fontSize: 18,
        fontStyle: FontStyle.italic,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildTrophy() {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white.withOpacity(0.5)],
        ).createShader(bounds);
      },
      child: const Icon(
        Icons.emoji_events,
        color: Colors.white,
        size: 40,
      ),
    );
  }

  List<Color> _getGradientColors(int rank) {
    switch (rank) {
      case 1:
        return [const Color(0xFFFFD700), const Color(0xFFFFA500)];
      case 2:
        return [const Color(0xFFC0C0C0), const Color(0xFF808080)];
      case 3:
        return [const Color(0xFFCD7F32), const Color(0xFF8B4513)];
      default:
        return [const Color(0xFF4CAF50), const Color(0xFF2E7D32)];
    }
  }
}
