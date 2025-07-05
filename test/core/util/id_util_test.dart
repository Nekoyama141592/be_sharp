import 'package:flutter_test/flutter_test.dart';
import 'package:be_sharp/core/util/id_util.dart';

void main() {
  group('IDUtil', () {
    group('ulid', () {
      test('should generate a valid ULID', () {
        final result = IDUtil.ulid();
        expect(result, isNotEmpty);
        expect(result.length, 26);
        expect(result, matches(RegExp(r'^[0-9a-z]{26}$')));
      });

      test('should generate unique IDs on consecutive calls', () {
        final id1 = IDUtil.ulid();
        final id2 = IDUtil.ulid();
        expect(id1, isNot(equals(id2)));
      });

      test('should generate lexicographically sortable IDs', () async {
        final id1 = IDUtil.ulid();
        await Future.delayed(const Duration(milliseconds: 1));
        final id2 = IDUtil.ulid();

        expect(id1.compareTo(id2), lessThan(0));
      });

      test('should generate multiple unique IDs', () {
        final ids = <String>{};
        for (int i = 0; i < 1000; i++) {
          ids.add(IDUtil.ulid());
        }
        expect(ids.length, 1000);
      });

      test('should only contain valid ULID characters', () {
        final id = IDUtil.ulid();
        final validChars = '0123456789abcdefghjkmnpqrstvwxyz';
        for (final char in id.split('')) {
          expect(validChars.contains(char), isTrue);
        }
      });
    });
  });
}
