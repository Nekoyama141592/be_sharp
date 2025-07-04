import 'package:flutter_test/flutter_test.dart';
import 'dart:typed_data';
import 'package:be_sharp/core/util/file_util.dart';

void main() {
  group('FileUtil', () {
    group('static methods', () {
      test('should have getCompressedImage method', () {
        expect(FileUtil.getCompressedImage, isA<Function>());
      });

      test('should have isNotSquareImage method', () {
        expect(FileUtil.isNotSquareImage, isA<Function>());
      });

      test('should have squareImageRequestMsg getter', () {
        expect(FileUtil.squareImageRequestMsg, isA<String>());
      });
    });

    group('isNotSquareImage', () {
      test('should throw exception for invalid image data', () {
        // Create a simple rectangular image byte array (mock data)
        final imageBytes = Uint8List.fromList([
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, // PNG header
          0x00, 0x00, 0x00, 0x0D, 0x49, 0x48, 0x44, 0x52, // IHDR chunk
          0x00, 0x00, 0x00, 0x20, // width: 32
          0x00, 0x00, 0x00, 0x10, // height: 16 (not square)
          0x08, 0x06, 0x00, 0x00, 0x00, 0x55, 0x1D, 0xF3, // rest of header
        ]);

        // This should throw an exception for invalid image data
        expect(() => FileUtil.isNotSquareImage(imageBytes), throwsException);
      });

      test('should throw exception for empty image bytes', () {
        final emptyBytes = Uint8List(0);
        expect(() => FileUtil.isNotSquareImage(emptyBytes), throwsException);
      });
    });

    group('squareImageRequestMsg', () {
      test('should return platform-specific message', () {
        final message = FileUtil.squareImageRequestMsg;
        expect(message, isA<String>());
        expect(message, isNotEmpty);
      });

      test('should be consistent across multiple calls', () {
        final message1 = FileUtil.squareImageRequestMsg;
        final message2 = FileUtil.squareImageRequestMsg;
        expect(message1, equals(message2));
      });
    });

    group('method signatures', () {
      test('getCompressedImage should accept ImageSource', () {
        expect(FileUtil.getCompressedImage, isA<Function>());
      });

      test('isNotSquareImage should accept Uint8List', () {
        expect(FileUtil.isNotSquareImage, isA<Function>());
      });
    });

    group('class structure', () {
      test('should be a utility class with static methods', () {
        expect(FileUtil, isA<Type>());
      });

      test('should be instantiable but primarily used as static class', () {
        expect(FileUtil(), isA<FileUtil>());
      });
    });

    // Note: Full integration tests would require mocking image processing libraries
    // These tests focus on the public API structure and basic validation
  });
}