import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:be_sharp/core/util/json_util.dart';

void main() {
  group('JsonUtil', () {
    group('encodeDecode', () {
      test('should handle Map<String, dynamic> correctly', () {
        final input = {'key': 'value', 'number': 42, 'bool': true};
        final result = JsonUtil.encodeDecode(input);
        expect(result, equals(input));
        expect(result, isA<Map<String, dynamic>>());
      });

      test('should handle List correctly (but returns as dynamic)', () {
        final input = [1, 2, 3, 'string', true];
        // Note: JsonUtil.encodeDecode returns Map<String, dynamic> by definition
        // but actually returns dynamic, so this test expects a type error
        expect(() => JsonUtil.encodeDecode(input), throwsA(isA<TypeError>()));
      });

      test('should handle nested objects', () {
        final input = {
          'user': {
            'name': 'John',
            'age': 30,
            'hobbies': ['reading', 'gaming']
          },
          'active': true
        };
        final result = JsonUtil.encodeDecode(input);
        expect(result, equals(input));
      });

      test('should throw for primitive types (type mismatch)', () {
        // Since the method returns Map<String, dynamic>, primitives should cause type errors
        expect(
            () => JsonUtil.encodeDecode('string'), throwsA(isA<TypeError>()));
        expect(() => JsonUtil.encodeDecode(42), throwsA(isA<TypeError>()));
        expect(() => JsonUtil.encodeDecode(true), throwsA(isA<TypeError>()));
        expect(() => JsonUtil.encodeDecode(null), throwsA(isA<TypeError>()));
      });

      test('should handle empty Map', () {
        expect(JsonUtil.encodeDecode({}), equals({}));
      });

      test('should throw for empty List (type mismatch)', () {
        expect(() => JsonUtil.encodeDecode([]), throwsA(isA<TypeError>()));
      });

      test('should handle complex nested structure', () {
        final input = {
          'data': [
            {
              'id': 1,
              'values': [1, 2, 3]
            },
            {
              'id': 2,
              'values': [4, 5, 6]
            }
          ],
          'metadata': {'count': 2, 'status': 'active'}
        };
        final result = JsonUtil.encodeDecode(input);
        expect(result, equals(input));
      });

      test('should throw exception for non-serializable objects', () {
        expect(() => JsonUtil.encodeDecode(DateTime.now()),
            throwsA(isA<JsonUnsupportedObjectError>()));
      });

      test('should preserve numeric types correctly', () {
        final input = {'int': 42, 'double': 3.14, 'negative': -10};
        final result = JsonUtil.encodeDecode(input);
        expect(result['int'], equals(42));
        expect(result['double'], equals(3.14));
        expect(result['negative'], equals(-10));
      });

      test('should handle special characters in strings', () {
        final input = {
          'special': 'Hello "World" with \n newline and \t tab',
          'unicode': '🚀 Unicode test 日本語'
        };
        final result = JsonUtil.encodeDecode(input);
        expect(result, equals(input));
      });
    });
  });
}
