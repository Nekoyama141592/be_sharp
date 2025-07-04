import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:be_sharp/core/util/timestamp_util.dart';

void main() {
  group('TimestampUtil', () {
    group('getTyped', () {
      test('should convert Map with _seconds to Timestamp', () {
        final input = {'_seconds': 1640995200};
        final result = TimestampUtil.getTyped(input);
        
        expect(result, isA<Timestamp>());
        expect(result.millisecondsSinceEpoch, equals(1640995200000));
      });

      test('should handle zero seconds', () {
        final input = {'_seconds': 0};
        final result = TimestampUtil.getTyped(input);
        
        expect(result, isA<Timestamp>());
        expect(result.millisecondsSinceEpoch, equals(0));
      });

      test('should handle negative seconds', () {
        final input = {'_seconds': -1000};
        final result = TimestampUtil.getTyped(input);
        
        expect(result, isA<Timestamp>());
        expect(result.millisecondsSinceEpoch, equals(-1000000));
      });

      test('should return Timestamp as-is when already a Timestamp', () {
        final timestamp = Timestamp.fromMillisecondsSinceEpoch(1640995200000);
        final result = TimestampUtil.getTyped(timestamp);
        
        expect(result, equals(timestamp));
        expect(result.millisecondsSinceEpoch, equals(1640995200000));
      });

      test('should handle current timestamp', () {
        final now = Timestamp.now();
        final result = TimestampUtil.getTyped(now);
        
        expect(result, equals(now));
        expect(result.millisecondsSinceEpoch, equals(now.millisecondsSinceEpoch));
      });

      test('should throw when _seconds is not an int', () {
        final input = {'_seconds': 'not_a_number'};
        expect(() => TimestampUtil.getTyped(input), throwsA(isA<TypeError>()));
      });

      test('should throw when _seconds key is missing', () {
        final input = {'other_key': 123};
        expect(() => TimestampUtil.getTyped(input), throwsA(isA<TypeError>()));
      });

      test('should throw when input is neither Map nor Timestamp', () {
        expect(() => TimestampUtil.getTyped('string'), throwsA(isA<TypeError>()));
        expect(() => TimestampUtil.getTyped(123), throwsA(isA<TypeError>()));
        expect(() => TimestampUtil.getTyped(true), throwsA(isA<TypeError>()));
      });

      test('should handle large timestamp values', () {
        final input = {'_seconds': 2147483647};
        final result = TimestampUtil.getTyped(input);
        
        expect(result, isA<Timestamp>());
        expect(result.millisecondsSinceEpoch, equals(2147483647000));
      });

      test('should handle Map with additional keys', () {
        final input = {
          '_seconds': 1640995200,
          'other_key': 'value',
          'number': 42
        };
        final result = TimestampUtil.getTyped(input);
        
        expect(result, isA<Timestamp>());
        expect(result.millisecondsSinceEpoch, equals(1640995200000));
      });
    });
  });
}