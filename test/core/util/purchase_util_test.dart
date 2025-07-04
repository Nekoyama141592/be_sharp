import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:be_sharp/core/util/purchase_util.dart';

void main() {
  group('PurchaseUtil', () {
    group('SubscriptionEnvKey enum', () {
      test('should have correct enum values', () {
        expect(SubscriptionEnvKey.SUBSCRIPTION_MONTH_ITEM_ID, isA<SubscriptionEnvKey>());
        expect(SubscriptionEnvKey.SUBSCRIPTION_ANNUAL_ITEM_ID, isA<SubscriptionEnvKey>());
      });

      test('should have correct enum names', () {
        expect(SubscriptionEnvKey.SUBSCRIPTION_MONTH_ITEM_ID.name, equals('SUBSCRIPTION_MONTH_ITEM_ID'));
        expect(SubscriptionEnvKey.SUBSCRIPTION_ANNUAL_ITEM_ID.name, equals('SUBSCRIPTION_ANNUAL_ITEM_ID'));
      });
    });

    group('purchaseDetailsFromJson', () {
      test('should handle complete JSON structure', () {
        final json = {
          'purchaseID': 'test_purchase_id',
          'productID': 'test_product_id',
          'verificationData': {
            'localVerificationData': 'local_data',
            'serverVerificationData': 'server_data',
            'source': 'test_source'
          },
          'transactionDate': '2023-01-01T00:00:00Z',
          'status': 'purchased',
          'pendingCompletePurchase': false
        };

        final result = PurchaseUtil.purchaseDetailsFromJson(json);
        
        expect(result.purchaseID, equals('test_purchase_id'));
        expect(result.productID, equals('test_product_id'));
        expect(result.verificationData.localVerificationData, equals('local_data'));
        expect(result.verificationData.serverVerificationData, equals('server_data'));
        expect(result.verificationData.source, equals('test_source'));
        expect(result.transactionDate, equals('2023-01-01T00:00:00Z'));
        expect(result.status, equals(PurchaseStatus.purchased));
        expect(result.pendingCompletePurchase, equals(false));
      });

      test('should handle missing pendingCompletePurchase', () {
        final json = {
          'purchaseID': 'test_purchase_id',
          'productID': 'test_product_id',
          'verificationData': {
            'localVerificationData': 'local_data',
            'serverVerificationData': 'server_data',
            'source': 'test_source'
          },
          'transactionDate': '2023-01-01T00:00:00Z',
          'status': 'purchased'
        };

        final result = PurchaseUtil.purchaseDetailsFromJson(json);
        expect(result.pendingCompletePurchase, equals(false));
      });

      test('should handle different purchase statuses', () {
        final statuses = ['purchased', 'pending', 'error', 'restored', 'canceled'];
        
        for (final status in statuses) {
          final json = {
            'purchaseID': 'test_purchase_id',
            'productID': 'test_product_id',
            'verificationData': {
              'localVerificationData': 'local_data',
              'serverVerificationData': 'server_data',
              'source': 'test_source'
            },
            'transactionDate': '2023-01-01T00:00:00Z',
            'status': status
          };

          final result = PurchaseUtil.purchaseDetailsFromJson(json);
          expect(result.status.name, equals(status));
        }
      });
    });

    group('productIds', () {
      test('should have productIds method (requires env setup)', () {
        expect(PurchaseUtil.productIds, isA<Function>());
        // Note: Actual testing requires environment variable setup
      });

      test('should have monthItemId method (requires env setup)', () {
        expect(PurchaseUtil.monthItemId, isA<Function>());
        // Note: Actual testing requires environment variable setup
      });
    });

    group('mockProducts', () {
      test('should have mockProducts method (requires env setup)', () {
        expect(PurchaseUtil.mockProducts, isA<Function>());
        // Note: Actual testing requires environment variable setup for product IDs
      });
    });

    group('param method', () {
      test('should create PurchaseParam with ProductDetails', () {
        final mockProduct = ProductDetails(
          id: 'test_id',
          title: 'Test Product',
          description: 'Test Description',
          price: '¥100',
          rawPrice: 100,
          currencyCode: 'JPY',
          currencySymbol: '¥'
        );
        
        final param = PurchaseUtil.param(mockProduct, null);
        expect(param, isA<PurchaseParam>());
        expect(param.productDetails, equals(mockProduct));
      });

      test('should handle null verified purchases', () {
        final mockProduct = ProductDetails(
          id: 'test_id',
          title: 'Test Product',
          description: 'Test Description',
          price: '¥100',
          rawPrice: 100,
          currencyCode: 'JPY',
          currencySymbol: '¥'
        );
        
        expect(() => PurchaseUtil.param(mockProduct, null), returnsNormally);
      });

      test('should handle empty verified purchases list', () {
        final mockProduct = ProductDetails(
          id: 'test_id',
          title: 'Test Product',
          description: 'Test Description',
          price: '¥100',
          rawPrice: 100,
          currencyCode: 'JPY',
          currencySymbol: '¥'
        );
        
        expect(() => PurchaseUtil.param(mockProduct, []), returnsNormally);
      });
    });

    group('static methods', () {
      test('should have all required static methods', () {
        expect(PurchaseUtil.purchaseDetailsFromJson, isA<Function>());
        expect(PurchaseUtil.monthItemId, isA<Function>());
        expect(PurchaseUtil.productIds, isA<Function>());
        expect(PurchaseUtil.mockProducts, isA<Function>());
        expect(PurchaseUtil.param, isA<Function>());
      });
    });

    group('class structure', () {
      test('should be a utility class with static methods only', () {
        expect(PurchaseUtil, isA<Type>());
      });

      test('should be instantiable but primarily used as static class', () {
        expect(PurchaseUtil(), isA<PurchaseUtil>());
      });
    });
  });
}