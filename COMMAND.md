## iOS


## Android

## 実行コード

### dev
flutter run --flavor dev -t lib/main_dev.dart

### stg
flutter run --flavor stg -t lib/main_stg.dart

### prod
flutter run --flavor prod -t lib/main_prod.dart

## Build

### iOS
flutter build ios --flavor dev -t lib/main_dev.dart --release

flutter build ios --flavor stg -t lib/main_stg.dart --release

flutter build ios --flavor prod -t lib/main_prod.dart --release

### Android
flutter build appbundle --flavor dev -t lib/main_dev.dart
flutter build appbundle --flavor stg -t lib/main_stg.dart
flutter build appbundle --flavor prod -t lib/main_prod.dart

## フォーマット
dart format --set-exit-if-changed .

flutter analyze .
## 自動生成
flutter pub run build_runner build --delete-conflicting-outputs
## 一括アップデート
flutter pub upgrade --major-versions

## SHA1の署名鍵
keytool -list -v \-alias androiddebugkey -keystore ~/.android/debug.keystore
keytool -list -v -keystore key.jks -alias key
Play Console -> アプリ -> 設定 -> アプリの署名 -> アプリ署名鍵の証明書 -> SHA1


## Xcodeキャッシュ削除
rm -rf ~/Library/Developer/Xcode/DerivedData
rm -rf ~/Library/Caches/com.apple.dt.Xcode
rm -rf ~/Library/Developer/Xcode/UserData/Previews
rm -rf ~/Library/Developer/XCPGDevices
rm -rf ~/Library/Developer/Xcode/iOS ＼DeviceSupport
