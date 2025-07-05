import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:be_sharp/core/util/product_util.dart';

void main() {
  group('ProductUtil', () {
    late ProductUtil productUtil;

    setUp(() {
      productUtil = ProductUtil();
    });

    group('mockList', () {
      test('should contain mock product details', () {
        expect(productUtil.mockList, isNotEmpty);
        expect(productUtil.mockList.length, equals(1));
        expect(productUtil.mockList, isA<List<ProductDetails>>());
      });

      test('should have correct product details structure', () {
        final product = productUtil.mockList.first;

        expect(product.id, equals('subscription_basic_month'));
        expect(product.title, equals("月額プラン"));
        expect(product.description, equals("一月使えます"));
        expect(product.price, equals("¥980"));
        expect(product.rawPrice, equals(980));
        expect(product.currencyCode, equals("JPY"));
        expect(product.currencySymbol, equals("¥"));
      });

      test('should have consistent pricing information', () {
        final product = productUtil.mockList.first;

        expect(product.price, startsWith(product.currencySymbol));
        expect(product.price, contains('980'));
        expect(product.currencyCode, equals("JPY"));
      });

      test('should have valid subscription ID format', () {
        final product = productUtil.mockList.first;

        expect(product.id, matches(RegExp(r'^subscription_.*_month$')));
        expect(product.id, contains('basic'));
      });

      test('should have Japanese text content', () {
        final product = productUtil.mockList.first;

        expect(product.title, equals("月額プラン"));
        expect(product.description, equals("一月使えます"));
        expect(product.title, contains("月額"));
        expect(product.description, contains("一月"));
      });

      test('should have positive price values', () {
        final product = productUtil.mockList.first;

        expect(product.rawPrice, greaterThan(0));
        expect(product.rawPrice, equals(980));
      });

      test('should be immutable after creation', () {
        final originalList = productUtil.mockList;
        final product = originalList.first;

        expect(product.id, equals('subscription_basic_month'));
        expect(originalList.length, equals(1));

        // Verify the list structure remains consistent
        expect(
            productUtil.mockList.first.id, equals('subscription_basic_month'));
      });

      test('should have all required ProductDetails fields', () {
        final product = productUtil.mockList.first;

        expect(product.id, isNotEmpty);
        expect(product.title, isNotEmpty);
        expect(product.description, isNotEmpty);
        expect(product.price, isNotEmpty);
        expect(product.rawPrice, isNotNull);
        expect(product.currencyCode, isNotEmpty);
        expect(product.currencySymbol, isNotEmpty);
      });
    });

    group('instance behavior', () {
      test('should create new instance with consistent data', () {
        final util1 = ProductUtil();
        final util2 = ProductUtil();

        expect(util1.mockList.length, equals(util2.mockList.length));
        expect(util1.mockList.first.id, equals(util2.mockList.first.id));
      });

      test('should allow multiple instances', () {
        final util1 = ProductUtil();
        final util2 = ProductUtil();

        expect(util1, isNot(same(util2)));
        expect(util1.mockList.first.id, equals(util2.mockList.first.id));
      });
    });
  });
}
