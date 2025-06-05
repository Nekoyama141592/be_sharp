import 'package:be_sharp/core/route_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class RankDialog extends HookWidget {
  const RankDialog({super.key, required this.rank});
  final int rank;

  ThemeData _getTheme(int rank) {
    switch (rank) {
      case 1:
        return ThemeData(
          primaryColor: const Color(0xFFFFD700),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFFFD700),
            brightness: Brightness.light,
          ),
        );
      case 2:
        return ThemeData(
          primaryColor: const Color(0xFFC0C0C0),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFC0C0C0),
            brightness: Brightness.light,
          ),
        );
      case 3:
        return ThemeData(
          primaryColor: const Color(0xFFCD7F32),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFCD7F32),
            brightness: Brightness.light,
          ),
        );
      default:
        return ThemeData(
          primaryColor: const Color(0xFF6A8CAF),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6A8CAF),
            brightness: Brightness.light,
          ),
        );
    }
  }

  Color _getMainColor(int rank) {
    if (rank == 1) return const Color(0xFFFFD700);
    if (rank == 2) return const Color(0xFFC0C0C0);
    if (rank == 3) return const Color(0xFFCD7F32);
    return const Color(0xFF6A8CAF);
  }

  Color _getAccentColor(int rank) {
    if (rank == 1) return const Color(0xFFFFF4D1);
    if (rank == 2) return const Color(0xFFF5F5F5);
    if (rank == 3) return const Color(0xFFF8E2D3);
    return const Color(0xFFD1E3F6);
  }

  String _getRankText(int rank) {
    if (rank == 1) return '1位';
    if (rank == 2) return '2位';
    if (rank == 3) return '3位';
    return '${rank}位';
  }

  IconData _getRankIcon(int rank) {
    if (rank == 1) return Icons.emoji_events;
    if (rank == 2) return Icons.star;
    if (rank == 3) return Icons.whatshot;
    return Icons.thumb_up;
  }

  String _getRankDescription(int rank) {
    if (rank == 1) return '素晴らしい！トップの座を獲得しました！';
    if (rank == 2) return '惜しい！あと一歩でトップでした！';
    if (rank == 3) return '素敵な成績です！トップ3入りおめでとう！';
    if (rank <= 10) return 'トップ10入り！素晴らしい成績です！';
    return 'チャレンジを続けましょう！';
  }

  List<Widget> _buildSparkles(Color color, int rank) {
    final random = math.Random(42);
    final sparkles = <Widget>[];

    for (var i = 0; i < 12; i++) {
      final size = random.nextDouble() * 10 + 5;
      final top = random.nextDouble() * 450;
      final left = random.nextDouble() * 300;
      final opacity = random.nextDouble() * 0.5 + 0.3;
      final delay = random.nextDouble() * 0.5;

      sparkles.add(
        Positioned(
          top: top,
          left: left,
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 1000 + (delay * 1000).toInt()),
            curve: Curves.easeInOut,
            builder: (context, value, child) {
              return Opacity(
                opacity: math.sin(value * math.pi) * opacity,
                child: Transform.scale(
                  scale: value,
                  child: Icon(
                    Icons.star,
                    size: size,
                    color: color.withValues(alpha: 0.8),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }
    return sparkles;
  }

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1500),
    );

    final rotateAnimation = useMemoized(
      () => Tween<double>(begin: 0, end: 5.73 * 3.14159).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOutBack),
      ),
      [controller],
    );

    final scaleAnimation = useMemoized(
      () => CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.7, curve: Curves.elasticOut),
      ),
      [controller],
    );

    final fadeAnimation = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
        ),
      ),
      [controller],
    );

    final slideAnimation = useMemoized(
      () => Tween<double>(begin: 50.0, end: 0.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: const Interval(0.3, 0.8, curve: Curves.easeOutCubic),
        ),
      ),
      [controller],
    );

    useEffect(() {
      controller.forward();
      return null;
    }, const []);

    final theme = _getTheme(rank);
    final mainColor = _getMainColor(rank);
    final accentColor = _getAccentColor(rank);
    final size = MediaQuery.of(context).size;

    return Theme(
      data: theme,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: size.width * 0.8,
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: mainColor.withValues(alpha: 0.3),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white,
                        accentColor,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: mainColor.withValues(alpha: 0.15),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  left: -30,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: mainColor.withValues(alpha: 0.1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, -0.5),
                              end: Offset.zero,
                            ).animate(fadeAnimation),
                            child: Text(
                              'BeSharp.',
                              style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: mainColor,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: mainColor.withValues(alpha: 0.2),
                                blurRadius: 15,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: RotationTransition(
                              turns: rotateAnimation,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      mainColor,
                                      mainColor.withValues(alpha: 0.7),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: Icon(
                                  _getRankIcon(rank),
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 0.5),
                              end: Offset.zero,
                            ).animate(fadeAnimation),
                            child: Text(
                              'おめでとうございます！',
                              style: GoogleFonts.notoSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 0.5),
                              end: Offset.zero,
                            ).animate(fadeAnimation),
                            child: Text(
                              _getRankDescription(rank),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                color: Colors.black54,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: AnimatedBuilder(
                            animation: slideAnimation,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(0, slideAnimation.value),
                                child: child,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    mainColor,
                                    mainColor.withValues(alpha: 0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: mainColor.withValues(alpha: 0.4),
                                    blurRadius: 15,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Text(
                                _getRankText(rank),
                                style: GoogleFonts.montserrat(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        FadeTransition(
                          opacity: fadeAnimation,
                          child: TextButton(
                            onPressed:
                                (Get.isDialogOpen ?? false) ? RouteCore.back : null,
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                    color: mainColor.withValues(alpha: 0.3),
                                    width: 1.5),
                              ),
                            ),
                            child: Text(
                              '閉じる',
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (rank <= 3) ..._buildSparkles(mainColor, rank),
              ],
            ),
          ),
        ),
      ),
    );
  }
}