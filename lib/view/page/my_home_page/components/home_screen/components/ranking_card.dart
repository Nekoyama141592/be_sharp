import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class RankingCard extends StatelessWidget {
  final int rank;
  final String userName;
  final Duration answerTime;
  final ImageProvider userImage;
  final String caption;

  const RankingCard({
    super.key,
    required this.rank,
    required this.userName,
    required this.answerTime,
    required this.userImage,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                _buildUserInfo(),
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

  Widget _buildUserInfo() {
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
          _formatDuration(answerTime),
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

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
