import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RankDialog extends StatefulWidget {
  const RankDialog({super.key, required this.rank});
  final int rank;

  @override
  RankDialogState createState() => RankDialogState();
}

class RankDialogState extends State<RankDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _scaleAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _rotateAnimation = Tween<double>(begin: 0, end: 5.73 * 3.14159).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _getColor() {
    if (widget.rank == 1) return Colors.amber;
    if (widget.rank == 2) return Colors.grey.shade300;
    if (widget.rank == 3) return Colors.orange.shade300;
    return Colors.blue.shade300;
  }

  String _getRankText() {
    if (widget.rank == 1) return '1位';
    if (widget.rank == 2) return '2位';
    if (widget.rank == 3) return '3位';
    return '${widget.rank}位';
  }

  IconData _getRankIcon() {
    if (widget.rank == 1) return Icons.emoji_events;
    if (widget.rank == 2) return Icons.star;
    if (widget.rank == 3) return Icons.whatshot;
    return Icons.thumb_up;
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.zero,
        content: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _getColor().withOpacity(0.8),
                _getColor().withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BeSharp.',
                style: GoogleFonts.notoSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              RotationTransition(
                turns: _rotateAnimation,
                child: Icon(
                  _getRankIcon(),
                  size: 100,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'おめでとうございます！',
                style: GoogleFonts.notoSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'あなたの今日の順位は',
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  color: Colors.black87.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  _getRankText(),
                  style: GoogleFonts.roboto(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: (Get.isDialogOpen ?? false) ? Get.back : null,
                  child: Text(
                    '閉じる',
                    style: GoogleFonts.roboto(
                        fontSize: 20.0, color: Colors.black87),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
