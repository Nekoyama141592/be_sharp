import 'package:flutter/material.dart';

class RankingCard extends StatelessWidget {
  final int rank;
  final String userName;
  final Duration answerTime;
  final ImageProvider userImage;

  const RankingCard({
    super.key,
    required this.rank,
    required this.userName,
    required this.answerTime,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: _getRankColor(rank),
            child: Text(
              '$rank',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: userImage,
            ),
            title: Text(
              userName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              '回答時間: ${_formatDuration(answerTime)}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(
              Icons.emoji_events,
              color: _getRankColor(rank),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.grey[400]!;
      case 3:
        return Colors.brown[300]!;
      default:
        return Colors.blue[300]!;
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
