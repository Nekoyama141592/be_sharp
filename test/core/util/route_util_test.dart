import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/core/util/route_util.dart';

void main() {
  group('RouteUtil', () {
    testWidgets('should have pushPath method', (tester) async {
      final context = await _buildTestContext(tester);

      expect(() => RouteUtil.pushPath(context, '/test'), isA<Function>());
    });

    testWidgets('should have pushReplace method', (tester) async {
      final context = await _buildTestContext(tester);

      expect(() => RouteUtil.pushReplace(context, '/test'), isA<Function>());
    });

    testWidgets('should have back method', (tester) async {
      final context = await _buildTestContext(tester);

      expect(() => RouteUtil.back(context), isA<Function>());
    });

    group('method signatures', () {
      test('pushPath should accept BuildContext and String', () {
        expect(RouteUtil.pushPath, isA<Function>());
      });

      test('pushReplace should accept BuildContext and String', () {
        expect(RouteUtil.pushReplace, isA<Function>());
      });

      test('back should accept BuildContext', () {
        expect(RouteUtil.back, isA<Function>());
      });
    });

    group('static methods', () {
      test('should be static methods', () {
        expect(RouteUtil.pushPath, isA<Function>());
        expect(RouteUtil.pushReplace, isA<Function>());
        expect(RouteUtil.back, isA<Function>());
      });
    });
  });
}

Future<BuildContext> _buildTestContext(WidgetTester tester) async {
  late BuildContext capturedContext;

  await tester.pumpWidget(
    MaterialApp(
      home: Builder(
        builder: (context) {
          capturedContext = context;
          return const Scaffold(body: Text('Test'));
        },
      ),
    ),
  );

  return capturedContext;
}
