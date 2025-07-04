import 'package:flutter_test/flutter_test.dart';
import 'package:be_sharp/core/util/aws_s3_util.dart';

void main() {
  group('AWSS3Util', () {
    group('profileObject', () {
      test('should generate correct S3 object path for valid UID', () {
        const uid = 'test-user-123';
        final result = AWSS3Util.profileObject(uid);
        expect(result, '$uid/profile.jpg');
      });

      test('should handle empty UID', () {
        const uid = '';
        final result = AWSS3Util.profileObject(uid);
        expect(result, '/profile.jpg');
      });

      test('should handle UID with special characters', () {
        const uid = 'user-123_456@test.com';
        final result = AWSS3Util.profileObject(uid);
        expect(result, 'user-123_456@test.com/profile.jpg');
      });

      test('should handle very long UID', () {
        final uid = 'a' * 1000;
        final result = AWSS3Util.profileObject(uid);
        expect(result, '$uid/profile.jpg');
      });

      test('should handle UID with path separators', () {
        const uid = 'user/with/slashes';
        final result = AWSS3Util.profileObject(uid);
        expect(result, 'user/with/slashes/profile.jpg');
      });
    });
  });
}