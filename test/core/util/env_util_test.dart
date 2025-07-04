import 'package:flutter_test/flutter_test.dart';
import 'package:be_sharp/core/util/env_util.dart';
import 'package:be_sharp/application/flavors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> _loadEnv(Flavor flavor) async {
  switch (flavor) {
    case Flavor.dev:
      return await dotenv.load(fileName: "assets/env/.env.dev");
    case Flavor.stg:
      return await dotenv.load(fileName: "assets/env/.env.stg");
    case Flavor.prod:
      return await dotenv.load(fileName: 'assets/env/.env.prod');
  }
}

void main() {
  group('EnvUtil Environment Loading', () {
    group('loadEnv for development environment', () {
      setUp(() async {
        await _loadEnv(Flavor.dev);
      });

      test('should load dev environment variables successfully', () {
        expect(() => _loadEnv(Flavor.dev), returnsNormally);
      });

      test('should have all required dev environment variables loaded', () {
        final requiredKeys = [
          'FIREBASE_ANDROID_API_KEY',
          'FIREBASE_ANDROID_APP_ID',
          'FIREBASE_ANDROID_MESSAGING_SENDER_ID',
          'FIREBASE_ANDROID_PROJECT_ID',
          'FIREBASE_ANDROID_STORAGE_BUCKET',
          'FIREBASE_IOS_API_KEY',
          'FIREBASE_IOS_APP_ID',
          'FIREBASE_IOS_MESSAGING_SENDER_ID',
          'FIREBASE_IOS_PROJECT_ID',
          'FIREBASE_IOS_STORAGE_BUCKET',
          'FIREBASE_IOS_CLIENT_ID',
          'FIREBASE_IOS_BUNDLE_ID',
          'SUBSCRIPTION_MONTH_ITEM_ID',
          'SUBSCRIPTION_ANNUAL_ITEM_ID',
        ];

        for (final key in requiredKeys) {
          expect(EnvUtil.containsKey(key), isTrue,
              reason: 'DEV environment variable $key should be defined');

          final value = EnvUtil.getValue(key);
          expect(value, isNotNull,
              reason: 'DEV environment variable $key should not be null');
          expect(value, isNotEmpty,
              reason: 'DEV environment variable $key should not be empty');
        }
      });

      test('should provide access to Firebase Android config for dev', () {
        expect(EnvUtil.firebaseAndroidApiKey, isNotEmpty);
        expect(EnvUtil.firebaseAndroidAppId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidProjectId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidStorageBucket, isNotEmpty);
      });

      test('should provide access to Firebase iOS config for dev', () {
        expect(EnvUtil.firebaseIosApiKey, isNotEmpty);
        expect(EnvUtil.firebaseIosAppId, isNotEmpty);
        expect(EnvUtil.firebaseIosMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseIosProjectId, isNotEmpty);
        expect(EnvUtil.firebaseIosStorageBucket, isNotEmpty);
        expect(EnvUtil.firebaseIosClientId, isNotEmpty);
        expect(EnvUtil.firebaseIosBundleId, isNotEmpty);
      });

      test('should provide access to subscription config for dev', () {
        expect(EnvUtil.subscriptionMonthItemId, isNotEmpty);
        expect(EnvUtil.subscriptionAnnualItemId, isNotEmpty);
        expect(EnvUtil.subscriptionItemIds, hasLength(2));
        expect(EnvUtil.subscriptionProductIds, hasLength(2));
      });
    });

    group('loadEnv for staging environment', () {
      setUp(() async {
        await _loadEnv(Flavor.stg);
      });

      test('should load stg environment variables successfully', () {
        expect(() => _loadEnv(Flavor.stg), returnsNormally);
      });

      test('should have all required stg environment variables loaded', () {
        final requiredKeys = [
          'FIREBASE_ANDROID_API_KEY',
          'FIREBASE_ANDROID_APP_ID',
          'FIREBASE_ANDROID_MESSAGING_SENDER_ID',
          'FIREBASE_ANDROID_PROJECT_ID',
          'FIREBASE_ANDROID_STORAGE_BUCKET',
          'FIREBASE_IOS_API_KEY',
          'FIREBASE_IOS_APP_ID',
          'FIREBASE_IOS_MESSAGING_SENDER_ID',
          'FIREBASE_IOS_PROJECT_ID',
          'FIREBASE_IOS_STORAGE_BUCKET',
          'FIREBASE_IOS_CLIENT_ID',
          'FIREBASE_IOS_BUNDLE_ID',
          'SUBSCRIPTION_MONTH_ITEM_ID',
          'SUBSCRIPTION_ANNUAL_ITEM_ID',
        ];

        for (final key in requiredKeys) {
          expect(EnvUtil.containsKey(key), isTrue,
              reason: 'STG environment variable $key should be defined');

          final value = EnvUtil.getValue(key);
          expect(value, isNotNull,
              reason: 'STG environment variable $key should not be null');
          expect(value, isNotEmpty,
              reason: 'STG environment variable $key should not be empty');
        }
      });

      test('should provide access to Firebase Android config for stg', () {
        expect(EnvUtil.firebaseAndroidApiKey, isNotEmpty);
        expect(EnvUtil.firebaseAndroidAppId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidProjectId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidStorageBucket, isNotEmpty);
      });

      test('should provide access to Firebase iOS config for stg', () {
        expect(EnvUtil.firebaseIosApiKey, isNotEmpty);
        expect(EnvUtil.firebaseIosAppId, isNotEmpty);
        expect(EnvUtil.firebaseIosMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseIosProjectId, isNotEmpty);
        expect(EnvUtil.firebaseIosStorageBucket, isNotEmpty);
        expect(EnvUtil.firebaseIosClientId, isNotEmpty);
        expect(EnvUtil.firebaseIosBundleId, isNotEmpty);
      });

      test('should provide access to subscription config for stg', () {
        expect(EnvUtil.subscriptionMonthItemId, isNotEmpty);
        expect(EnvUtil.subscriptionAnnualItemId, isNotEmpty);
        expect(EnvUtil.subscriptionItemIds, hasLength(2));
        expect(EnvUtil.subscriptionProductIds, hasLength(2));
      });
    });

    group('loadEnv for production environment', () {
      setUp(() async {
        await _loadEnv(Flavor.prod);
      });

      test('should load prod environment variables successfully', () {
        expect(() => _loadEnv(Flavor.prod), returnsNormally);
      });

      test('should have all required prod environment variables loaded', () {
        final requiredKeys = [
          'FIREBASE_ANDROID_API_KEY',
          'FIREBASE_ANDROID_APP_ID',
          'FIREBASE_ANDROID_MESSAGING_SENDER_ID',
          'FIREBASE_ANDROID_PROJECT_ID',
          'FIREBASE_ANDROID_STORAGE_BUCKET',
          'FIREBASE_IOS_API_KEY',
          'FIREBASE_IOS_APP_ID',
          'FIREBASE_IOS_MESSAGING_SENDER_ID',
          'FIREBASE_IOS_PROJECT_ID',
          'FIREBASE_IOS_STORAGE_BUCKET',
          'FIREBASE_IOS_CLIENT_ID',
          'FIREBASE_IOS_BUNDLE_ID',
          'SUBSCRIPTION_MONTH_ITEM_ID',
          'SUBSCRIPTION_ANNUAL_ITEM_ID',
        ];

        for (final key in requiredKeys) {
          expect(EnvUtil.containsKey(key), isTrue,
              reason: 'PROD environment variable $key should be defined');

          final value = EnvUtil.getValue(key);
          expect(value, isNotNull,
              reason: 'PROD environment variable $key should not be null');
          expect(value, isNotEmpty,
              reason: 'PROD environment variable $key should not be empty');
        }
      });

      test('should provide access to Firebase Android config for prod', () {
        expect(EnvUtil.firebaseAndroidApiKey, isNotEmpty);
        expect(EnvUtil.firebaseAndroidAppId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidProjectId, isNotEmpty);
        expect(EnvUtil.firebaseAndroidStorageBucket, isNotEmpty);
      });

      test('should provide access to Firebase iOS config for prod', () {
        expect(EnvUtil.firebaseIosApiKey, isNotEmpty);
        expect(EnvUtil.firebaseIosAppId, isNotEmpty);
        expect(EnvUtil.firebaseIosMessagingSenderId, isNotEmpty);
        expect(EnvUtil.firebaseIosProjectId, isNotEmpty);
        expect(EnvUtil.firebaseIosStorageBucket, isNotEmpty);
        expect(EnvUtil.firebaseIosClientId, isNotEmpty);
        expect(EnvUtil.firebaseIosBundleId, isNotEmpty);
      });

      test('should provide access to subscription config for prod', () {
        expect(EnvUtil.subscriptionMonthItemId, isNotEmpty);
        expect(EnvUtil.subscriptionAnnualItemId, isNotEmpty);
        expect(EnvUtil.subscriptionItemIds, hasLength(2));
        expect(EnvUtil.subscriptionProductIds, hasLength(2));
      });
    });
  });

  group('EnvUtil', () {
    group('Firebase Android environment variables', () {
      test('firebaseAndroidApiKey should not be empty', () {
        expect(() => EnvUtil.firebaseAndroidApiKey, returnsNormally);
        final value = EnvUtil.firebaseAndroidApiKey;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseAndroidAppId should not be empty', () {
        expect(() => EnvUtil.firebaseAndroidAppId, returnsNormally);
        final value = EnvUtil.firebaseAndroidAppId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseAndroidMessagingSenderId should not be empty', () {
        expect(() => EnvUtil.firebaseAndroidMessagingSenderId, returnsNormally);
        final value = EnvUtil.firebaseAndroidMessagingSenderId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseAndroidProjectId should not be empty', () {
        expect(() => EnvUtil.firebaseAndroidProjectId, returnsNormally);
        final value = EnvUtil.firebaseAndroidProjectId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseAndroidStorageBucket should not be empty', () {
        expect(() => EnvUtil.firebaseAndroidStorageBucket, returnsNormally);
        final value = EnvUtil.firebaseAndroidStorageBucket;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });
    });

    group('Firebase iOS environment variables', () {
      test('firebaseIosApiKey should not be empty', () {
        expect(() => EnvUtil.firebaseIosApiKey, returnsNormally);
        final value = EnvUtil.firebaseIosApiKey;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosAppId should not be empty', () {
        expect(() => EnvUtil.firebaseIosAppId, returnsNormally);
        final value = EnvUtil.firebaseIosAppId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosMessagingSenderId should not be empty', () {
        expect(() => EnvUtil.firebaseIosMessagingSenderId, returnsNormally);
        final value = EnvUtil.firebaseIosMessagingSenderId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosProjectId should not be empty', () {
        expect(() => EnvUtil.firebaseIosProjectId, returnsNormally);
        final value = EnvUtil.firebaseIosProjectId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosStorageBucket should not be empty', () {
        expect(() => EnvUtil.firebaseIosStorageBucket, returnsNormally);
        final value = EnvUtil.firebaseIosStorageBucket;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosClientId should not be empty', () {
        expect(() => EnvUtil.firebaseIosClientId, returnsNormally);
        final value = EnvUtil.firebaseIosClientId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('firebaseIosBundleId should not be empty', () {
        expect(() => EnvUtil.firebaseIosBundleId, returnsNormally);
        final value = EnvUtil.firebaseIosBundleId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });
    });

    group('Subscription environment variables', () {
      test('subscriptionMonthItemId should not be empty', () {
        expect(() => EnvUtil.subscriptionMonthItemId, returnsNormally);
        final value = EnvUtil.subscriptionMonthItemId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('subscriptionAnnualItemId should not be empty', () {
        expect(() => EnvUtil.subscriptionAnnualItemId, returnsNormally);
        final value = EnvUtil.subscriptionAnnualItemId;
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('subscriptionItemIds should contain both item IDs', () {
        final itemIds = EnvUtil.subscriptionItemIds;
        expect(itemIds, isNotNull);
        expect(itemIds, hasLength(2));
        expect(itemIds, contains(EnvUtil.subscriptionMonthItemId));
        expect(itemIds, contains(EnvUtil.subscriptionAnnualItemId));

        for (final itemId in itemIds) {
          expect(itemId, isNotNull);
          expect(itemId, isNotEmpty);
          expect(itemId.trim(), isNotEmpty);
        }
      });

      test('subscriptionProductIds should be a Set with both item IDs', () {
        final productIds = EnvUtil.subscriptionProductIds;
        expect(productIds, isNotNull);
        expect(productIds, hasLength(2));
        expect(productIds, contains(EnvUtil.subscriptionMonthItemId));
        expect(productIds, contains(EnvUtil.subscriptionAnnualItemId));

        for (final productId in productIds) {
          expect(productId, isNotNull);
          expect(productId, isNotEmpty);
          expect(productId.trim(), isNotEmpty);
        }
      });
    });

    group('Core utility methods', () {
      test('getValue should return non-empty value for valid keys', () {
        final value = EnvUtil.getValue('FIREBASE_ANDROID_API_KEY');
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value.trim(), isNotEmpty);
      });

      test('getValueOrNull should return value for existing keys', () {
        final value = EnvUtil.getValueOrNull('FIREBASE_ANDROID_API_KEY');
        expect(value, isNotNull);
        expect(value, isNotEmpty);
        expect(value!.trim(), isNotEmpty);
      });

      test('getValueOrNull should return null for non-existing keys', () {
        final value = EnvUtil.getValueOrNull('NON_EXISTING_KEY');
        expect(value, isNull);
      });

      test('containsKey should return true for existing keys', () {
        final exists = EnvUtil.containsKey('FIREBASE_ANDROID_API_KEY');
        expect(exists, isTrue);
      });

      test('containsKey should return false for non-existing keys', () {
        final exists = EnvUtil.containsKey('NON_EXISTING_KEY');
        expect(exists, isFalse);
      });
    });

    group('All environment keys validation', () {
      test('all required environment variables should be defined and non-empty',
          () {
        final requiredKeys = [
          'FIREBASE_ANDROID_API_KEY',
          'FIREBASE_ANDROID_APP_ID',
          'FIREBASE_ANDROID_MESSAGING_SENDER_ID',
          'FIREBASE_ANDROID_PROJECT_ID',
          'FIREBASE_ANDROID_STORAGE_BUCKET',
          'FIREBASE_IOS_API_KEY',
          'FIREBASE_IOS_APP_ID',
          'FIREBASE_IOS_MESSAGING_SENDER_ID',
          'FIREBASE_IOS_PROJECT_ID',
          'FIREBASE_IOS_STORAGE_BUCKET',
          'FIREBASE_IOS_CLIENT_ID',
          'FIREBASE_IOS_BUNDLE_ID',
          'SUBSCRIPTION_MONTH_ITEM_ID',
          'SUBSCRIPTION_ANNUAL_ITEM_ID',
        ];

        for (final key in requiredKeys) {
          expect(EnvUtil.containsKey(key), isTrue,
              reason: 'Environment variable $key should be defined');

          final value = EnvUtil.getValue(key);
          expect(value, isNotNull,
              reason: 'Environment variable $key should not be null');
          expect(value, isNotEmpty,
              reason: 'Environment variable $key should not be empty');
          expect(value.trim(), isNotEmpty,
              reason:
                  'Environment variable $key should not be whitespace only');
        }
      });
    });
  });
}
