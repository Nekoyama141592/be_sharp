import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

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
  late Animation<double> _fadeAnimation;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    
    // 元のアニメーションを維持
    _rotateAnimation = Tween<double>(begin: 0, end: 5.73 * 3.14159).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack));
    
    // 新しいアニメーションを追加
    _scaleAnimation = CurvedAnimation(
      parent: _controller, 
      curve: const Interval(0.0, 0.7, curve: Curves.elasticOut)
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
      ),
    );
    
    _slideAnimation = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.easeOutCubic),
      ),
    );
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ランキングに応じたカラーテーマを取得
  ThemeData _getTheme() {
    switch (widget.rank) {
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

  Color _getMainColor() {
    if (widget.rank == 1) return const Color(0xFFFFD700); // 金
    if (widget.rank == 2) return const Color(0xFFC0C0C0); // 銀
    if (widget.rank == 3) return const Color(0xFFCD7F32); // 銅
    return const Color(0xFF6A8CAF); // 青系
  }

  Color _getAccentColor() {
    if (widget.rank == 1) return const Color(0xFFFFF4D1); // 薄い金
    if (widget.rank == 2) return const Color(0xFFF5F5F5); // 薄い銀
    if (widget.rank == 3) return const Color(0xFFF8E2D3); // 薄い銅
    return const Color(0xFFD1E3F6); // 薄い青
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

  String _getRankDescription() {
    if (widget.rank == 1) return '素晴らしい！トップの座を獲得しました！';
    if (widget.rank == 2) return '惜しい！あと一歩でトップでした！';
    if (widget.rank == 3) return '素敵な成績です！トップ3入りおめでとう！';
    if (widget.rank <= 10) return 'トップ10入り！素晴らしい成績です！';
    return 'チャレンジを続けましょう！';
  }

  @override
  Widget build(BuildContext context) {
    final theme = _getTheme();
    final mainColor = _getMainColor();
    final accentColor = _getAccentColor();
    final size = MediaQuery.of(context).size;
    return Theme(
      data: theme,
      child: ScaleTransition(
        scale: _scaleAnimation,
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
                  color: mainColor.withOpacity(0.3),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // 背景のカード
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
                
                // 装飾的な背景要素
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: mainColor.withOpacity(0.15),
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
                      color: mainColor.withOpacity(0.1),
                    ),
                  ),
                ),
                
                // メインコンテンツ
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // ロゴ
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, -0.5),
                            end: Offset.zero,
                          ).animate(_fadeAnimation),
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
                      
                      // アイコン（回転アニメーションを維持）
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: mainColor.withOpacity(0.2),
                              blurRadius: 15,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: RotationTransition(
                            turns: _rotateAnimation,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [
                                    mainColor,
                                    mainColor.withOpacity(0.7),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              child: Icon(
                                _getRankIcon(),
                                size: 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // おめでとうメッセージ
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.5),
                            end: Offset.zero,
                          ).animate(_fadeAnimation),
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
                      
                      // 説明テキスト
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.5),
                            end: Offset.zero,
                          ).animate(_fadeAnimation),
                          child: Text(
                            _getRankDescription(),
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
                      
                      // ランク表示
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Transform.translate(
                          offset: Offset(0, _slideAnimation.value),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  mainColor,
                                  mainColor.withOpacity(0.8),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: mainColor.withOpacity(0.4),
                                  blurRadius: 15,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Text(
                              _getRankText(),
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
                      
                      // 閉じるボタン
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: TextButton(
                          onPressed: (Get.isDialogOpen ?? false) ? Get.back : null,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: mainColor.withOpacity(0.3), width: 1.5),
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
                
                // 装飾的な要素（キラキラエフェクト）
                if (widget.rank <= 3) ..._buildSparkles(mainColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  // キラキラエフェクトを生成
  List<Widget> _buildSparkles(Color color) {
    final random = math.Random(42); // 固定シードで再現性を確保
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
                    color: color.withOpacity(0.8),
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
}

