import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/core/util/padding_util.dart';

void main() {
  group('PaddingUtil', () {
    testWidgets('should calculate vertical padding correctly', (tester) async {
      const screenHeight = 800.0;
      const screenWidth = 400.0;

      final context = await _buildTestContextWithSize(
          tester, const Size(screenWidth, screenHeight));

      final result = PaddingUtil.vertical(context);
      final expected = screenHeight * 0.03;

      expect(result, equals(expected));
      expect(result, equals(24.0));
    });

    testWidgets('should calculate textFieldWidth correctly', (tester) async {
      const screenHeight = 800.0;
      const screenWidth = 400.0;

      final context = await _buildTestContextWithSize(
          tester, const Size(screenWidth, screenHeight));

      final result = PaddingUtil.textFieldWidth(context);
      final expected = screenWidth * 0.8;

      expect(result, equals(expected));
      expect(result, equals(320.0));
    });

    testWidgets('should calculate userImageSize correctly', (tester) async {
      const screenHeight = 800.0;
      const screenWidth = 400.0;

      final context = await _buildTestContextWithSize(
          tester, const Size(screenWidth, screenHeight));

      final result = PaddingUtil.userImageSize(context);
      final expected = screenWidth * 0.16;

      expect(result, equals(expected));
      expect(result, equals(64.0));
    });

    testWidgets('should handle different screen sizes', (tester) async {
      const sizes = [
        Size(320, 568), // iPhone SE
        Size(375, 812), // iPhone X
        Size(414, 896), // iPhone 11 Pro Max
        Size(390, 844), // iPhone 12
        Size(1080, 1920), // Large Android
      ];

      for (final size in sizes) {
        final context = await _buildTestContextWithSize(tester, size);

        final vertical = PaddingUtil.vertical(context);
        final textFieldWidth = PaddingUtil.textFieldWidth(context);
        final userImageSize = PaddingUtil.userImageSize(context);

        expect(vertical, equals(size.height * 0.03));
        expect(textFieldWidth, equals(size.width * 0.8));
        expect(userImageSize, equals(size.width * 0.16));

        expect(vertical, greaterThan(0));
        expect(textFieldWidth, greaterThan(0));
        expect(userImageSize, greaterThan(0));
      }
    });

    testWidgets('should handle edge cases', (tester) async {
      const smallSize = Size(100, 100);
      final context = await _buildTestContextWithSize(tester, smallSize);

      final vertical = PaddingUtil.vertical(context);
      final textFieldWidth = PaddingUtil.textFieldWidth(context);
      final userImageSize = PaddingUtil.userImageSize(context);

      expect(vertical, equals(3.0));
      expect(textFieldWidth, equals(80.0));
      expect(userImageSize, equals(16.0));
    });

    testWidgets('should maintain proportion consistency', (tester) async {
      const baseSize = Size(400, 800);
      const doubleSize = Size(800, 1600);

      final baseContext = await _buildTestContextWithSize(tester, baseSize);

      final baseVertical = PaddingUtil.vertical(baseContext);
      final baseTextFieldWidth = PaddingUtil.textFieldWidth(baseContext);
      final baseUserImageSize = PaddingUtil.userImageSize(baseContext);

      // Build new context with double size
      final doubleContext = await _buildTestContextWithSize(tester, doubleSize);

      final doubleVertical = PaddingUtil.vertical(doubleContext);
      final doubleTextFieldWidth = PaddingUtil.textFieldWidth(doubleContext);
      final doubleUserImageSize = PaddingUtil.userImageSize(doubleContext);

      expect(doubleVertical, equals(baseVertical * 2));
      expect(doubleTextFieldWidth, equals(baseTextFieldWidth * 2));
      expect(doubleUserImageSize, equals(baseUserImageSize * 2));
    });
  });
}

Future<BuildContext> _buildTestContextWithSize(
    WidgetTester tester, Size size) async {
  late BuildContext capturedContext;

  await tester.pumpWidget(
    MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(size: size),
        child: Builder(
          builder: (context) {
            capturedContext = context;
            return const Scaffold(body: Text('Test'));
          },
        ),
      ),
    ),
  );

  return capturedContext;
}
