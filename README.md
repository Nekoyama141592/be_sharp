# BeSharp.

## 概要

「BeSharp.」は一日一回、ランダムな時間に通知が来て制限時間以内に数学の問題を解くアプリです。  
Flutterを使用したクロスプラットフォーム対応のモバイルアプリケーションで、Firebase基盤によるプッシュ通知機能を搭載しています。

## リリース

- **初回リリース**: 2025年4月
- **現在のバージョン**: 1.0.20+20

## 主な機能

- **デイリー数学問題**: ランダムタイムでプッシュ通知による問題配信
- **制限時間チャレンジ**: 時間制限内での回答システム
- **ランキング機能**: ユーザー間でのスコア競争
- **ユーザー認証**: Firebase AuthによるGoogleサインイン・Apple ID認証
- **プロフィール管理**: ユーザー情報の編集・削除機能
- **多環境対応**: 開発・ステージング・本番環境の切り替え

## アプリケーションへのアクセス

### ストアリンク
- **iOS**: https://apps.apple.com/us/app/besharp/id6740705612
- **Android**: https://play.google.com/store/apps/details?id=com.firebaseapp.be_sharp_prod

## 開発環境

### 前提条件
- **Flutter SDK**: 3.3.0以上
- **Dart SDK**: 3.3.0以上 
- **iOS開発**: Xcode 14.0以上
- **Android開発**: Android Studio 2022.3以上
- **Firebase CLI**: 最新版推奨

### セットアップ手順

1. **リポジトリのクローン**
   ```bash
   git clone <repository-url>
   cd be_sharp_cross
   ```

2. **依存関係のインストール**
   ```bash
   flutter pub get
   ```

3. **環境別の実行**
   ```bash
   # 開発環境
   flutter run --flavor dev
   
   # ステージング環境
   flutter run --flavor stg
   
   # 本番環境
   flutter run --flavor prod
   ```

### ビルドコマンド

#### iOS
```bash
# 開発環境
flutter build ios --flavor dev --release

# ステージング環境
flutter build ios --flavor stg --release

# 本番環境
flutter build ios --flavor prod --release
```

#### Android
```bash
# 開発環境
flutter build appbundle --flavor dev

# ステージング環境
flutter build appbundle --flavor stg

# 本番環境
flutter build appbundle --flavor prod
```

### 開発ツール

#### コード品質
```bash
# フォーマット
dart format --set-exit-if-changed .

# 静的解析
flutter analyze .

# const修飾子の自動適用
dart fix --apply
```

#### コード生成
```bash
# ワンタイム生成
flutter pub run build_runner build --delete-conflicting-outputs

# ファイル監視モード
flutter pub run build_runner watch --delete-conflicting-outputs
```

#### 依存関係管理
```bash
# 全パッケージのメジャーアップデート
flutter pub upgrade --major-versions
```

## アーキテクチャ

### クリーンアーキテクチャ

本プロジェクトはクリーンアーキテクチャパターンを採用し、関心事の分離を実現しています。

```
lib/
├── application/          # アプリケーション層
│   ├── flavors.dart     # 環境設定管理
│   └── use_case/        # ビジネスロジック調整
├── core/                # 共通コア機能
│   ├── extension/       # 拡張メソッド
│   ├── provider/        # 共通プロバイダー
│   └── util/            # ユーティリティ関数
├── domain/              # ドメイン層
│   ├── entity/          # ドメインエンティティ
│   ├── repository_interface/  # リポジトリインターフェース
│   └── use_case_interface/    # ユースケースインターフェース
├── infrastructure/      # インフラストラクチャ層
│   ├── constants/       # アプリケーション定数
│   ├── model/           # データモデル
│   └── repository/      # データアクセス実装
├── presentation/        # プレゼンテーション層
│   ├── common/          # 共通UIコンポーネント
│   ├── constants/       # UI定数
│   ├── navigation/      # ルーティング設定
│   ├── notifier/        # 状態管理
│   ├── page/            # 画面コンポーネント
│   ├── root_page/       # ルートページ
│   ├── state/           # 状態定義
│   └── util/            # UIユーティリティ
└── main.dart            # エントリーポイント
```

### 技術スタック

#### フロントエンド
- **Flutter**: 3.3.0+ (クロスプラットフォーム開発)
- **Dart**: 3.3.0+ (プログラミング言語)

#### 状態管理
- **Riverpod**: 2.6.1 (状態管理フレームワーク)
- **Hooks Riverpod**: 2.6.1 (React Hooksライクな状態管理)
- **Flutter Hooks**: 0.21.2 (ライフサイクル管理)

#### バックエンド・インフラ
- **Firebase Auth**: 認証システム (Google・Apple ID)
- **Cloud Firestore**: NoSQLデータベース
- **Cloud Functions**: サーバーレス関数
- **Firebase Messaging**: プッシュ通知
- **Firebase Remote Config**: リモート設定管理
- **Firebase Crashlytics**: クラッシュレポート

#### データ処理
- **Freezed**: 3.1.0 (不変データクラス生成)
- **JSON Serializable**: 6.9.5 (JSON シリアライゼーション)

#### UI・UX
- **Google Fonts**: 6.2.1 (フォント管理)
- **Font Awesome Flutter**: 10.8.0 (アイコン)
- **Shimmer**: 3.0.0 (ローディングアニメーション)
- **GPT Markdown**: 1.1.1 (マークダウンレンダリング)

#### ユーティリティ
- **Auto Route**: 10.1.0 (ルーティング)
- **Image Picker/Cropper**: 画像選択・編集
- **In App Purchase**: アプリ内課金
- **Shared Preferences**: ローカルストレージ
- **URL Launcher**: 外部URL起動

### 多環境対応

#### フレーバー設定
```yaml
flavors:
  dev:    # 開発環境
    name: "BeSharp. DEV"
    applicationId: "com.firebaseapp.be_sharp_dev"
    bundleId: "com.firebaseapp.beSharpDev"
  
  stg:    # ステージング環境
    name: "BeSharp. STG"
    applicationId: "com.firebaseapp.be_sharp_stg"
    bundleId: "com.firebaseapp.beSharpStg"
  
  prod:   # 本番環境
    name: "BeSharp."
    applicationId: "com.firebaseapp.be_sharp_prod"
    bundleId: "com.firebaseapp.beSharpProd"
```

## Firebase設定

### プロジェクト構成
```
firebase/
├── cloud_functions/     # Cloud Functions (環境別)
│   ├── dev/
│   ├── stg/
│   └── prod/
└── firestore_rules/     # Firestoreセキュリティルール
    ├── dev/
    ├── stg/
    └── prod/
```

### Firebase機能
- **Authentication**: ユーザー認証・アカウント管理
- **Firestore**: リアルタイムデータベース
- **Functions**: サーバーサイドロジック
- **Messaging**: プッシュ通知配信
- **Remote Config**: アプリ設定の動的変更
- **Crashlytics**: エラー追跡・分析

## テスト

### テスト構成
```
test/
├── core/
│   └── util/            # ユーティリティ関数のテスト
└── infrastructure/
    └── repository/      # リポジトリ層のテスト
```

### テスト実行
```bash
# 全テスト実行
flutter test

# カバレッジ付きテスト
flutter test --coverage
```

### モックライブラリ
- **Mockito**: 5.4.6 (モック生成)
- **Fake Cloud Firestore**: 3.1.0 (Firestoreモック)
- **Firebase Auth Mocks**: 0.14.2 (Firebase Authモック)

## プラットフォーム対応

### iOS設定
- **最小対応バージョン**: iOS 12.0
- **Xcode設定**: 複数環境対応
- **Podfile管理**: CocoaPodsによる依存関係管理

### Android設定
- **最小対応バージョン**: Android API 21
- **Gradle設定**: マルチフレーバー対応
- **ProGuard**: リリースビルド時の難読化

### Web・デスクトップ
- **Web**: PWA対応準備
- **Linux**: CMake設定済み
- **macOS**: ネイティブアプリ対応
- **Windows**: Win32アプリ対応

## 運用・監視

### CI/CD
```yaml
# codemagic.yaml
# CodemagicによるCI/CD設定ファイル
```

### アセット管理
```
assets/
└── images/              # アプリケーションアイコン
    ├── icon-dev.JPG     # 開発環境用
    ├── icon-stg.JPG     # ステージング環境用
    └── icon-prod.JPG    # 本番環境用
```

## ドキュメント

- **CLAUDE.md**: Claude AI開発支援ガイド
- **CLEAN_ARCHITECTURE.md**: アーキテクチャ詳細
- **COMMAND.md**: 開発コマンド集
- **analysis_options.yaml**: Dart/Flutterコード規約

## ライセンス

このプロジェクトは非公開です。無断転載・使用を禁止します。

## 開発チーム向け注意事項

1. **環境切り替え**: 必ず適切なフレーバーで実行・テストしてください
2. **コード生成**: FreezedやAutoRouteを使用した場合は必ずbuild_runnerを実行してください  
3. **Firebase設定**: 環境別のFirebase設定ファイルを正しく配置してください
4. **テスト**: 新機能追加時は対応するテストも作成してください
5. **コード品質**: プルリクエスト前に必ずlint・formatを実行してください

## サポート

技術的な質問や問題がある場合は、開発チームまでお気軽にお問い合わせください。
