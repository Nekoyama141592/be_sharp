<div align="center">

# 🧮 BeSharp.

*数学の力で、毎日をより鋭く*

[![Flutter](https://img.shields.io/badge/Flutter-3.3.0+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.3.0+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFA000?style=for-the-badge&logo=firebase&logoColor=white)](https://firebase.google.com)

[![iOS](https://img.shields.io/badge/iOS-App_Store-000000?style=for-the-badge&logo=apple&logoColor=white)](https://apps.apple.com/us/app/besharp/id6740705612)
[![Android](https://img.shields.io/badge/Android-Google_Play-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://play.google.com/store/apps/details?id=com.firebaseapp.be_sharp_prod)

</div>

---

## 📱 概要

「**BeSharp.**」は一日一回、ランダムな時間に通知が来て制限時間以内に数学の問題を解くアプリです。  
Flutterを使用したクロスプラットフォーム対応のモバイルアプリケーションで、Firebase基盤による認証・データベース・プッシュ通知機能を搭載しています。

### ✨ コンセプト
> 毎日のちょっとした数学チャレンジで、思考力を継続的に鍛える

## 📋 リリース情報

<table>
<tr>
<td align="center"><strong>🚀 初回リリース</strong></td>
<td align="center"><strong>📱 現在のバージョン</strong></td>
</tr>
<tr>
<td align="center">2025年4月</td>
<td align="center"><code>1.0.20+20</code></td>
</tr>
</table>

## 🌟 主な機能

<div align="center">

| 機能 | 説明 | 技術 |
|:---:|:---|:---:|
| 🔔 **デイリー数学問題** | ランダムタイムでプッシュ通知による問題配信 | Firebase Messaging |
| ⏱️ **制限時間チャレンジ** | 時間制限内での回答システム | Flutter Timer |
| 🏆 **ランキング機能** | ユーザー間でのスコア競争 | Cloud Firestore |
| 🔐 **ユーザー認証** | Google・Apple IDサインイン | Firebase Auth |
| 👤 **プロフィール管理** | ユーザー情報の編集・削除機能 | CRUD操作 |
| 🔄 **多環境対応** | dev・stg・prod環境の切り替え | Flutter Flavorizr |

</div>

## 📲 ダウンロード

<div align="center">

### 📱 アプリストア

<a href="https://apps.apple.com/us/app/besharp/id6740705612">
  <img src="https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg" alt="Download on the App Store" height="60">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="https://play.google.com/store/apps/details?id=com.firebaseapp.be_sharp_prod">
  <img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" alt="Get it on Google Play" height="60">
</a>

</div>

## 🛠️ 開発環境

### 📋 前提条件

<table>
<tr>
<th>ツール</th>
<th>バージョン</th>
<th>目的</th>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white" alt="Flutter"></td>
<td><code>3.3.0+</code></td>
<td>クロスプラットフォーム開発</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white" alt="Dart"></td>
<td><code>3.3.0+</code></td>
<td>プログラミング言語</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Xcode-147EFB?style=flat&logo=xcode&logoColor=white" alt="Xcode"></td>
<td><code>14.0+</code></td>
<td>iOS開発</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Android_Studio-3DDC84?style=flat&logo=android-studio&logoColor=white" alt="Android Studio"></td>
<td><code>2022.3+</code></td>
<td>Android開発</td>
</tr>
<tr>
<td><img src="https://img.shields.io/badge/Firebase_CLI-FFA000?style=flat&logo=firebase&logoColor=white" alt="Firebase CLI"></td>
<td><code>latest</code></td>
<td>Firebase管理</td>
</tr>
</table>

### 🚀 セットアップ手順

<details>
<summary><strong>📥 Step 1: リポジトリのクローン</strong></summary>

```bash
git clone <repository-url>
cd be_sharp_cross
```
</details>

<details>
<summary><strong>📦 Step 2: 依存関係のインストール</strong></summary>

```bash
flutter pub get
```
</details>

<details>
<summary><strong>🎯 Step 3: 環境別の実行</strong></summary>

```bash
# 🔧 開発環境
flutter run --flavor dev

# 🧪 ステージング環境
flutter run --flavor stg

# 🚀 本番環境
flutter run --flavor prod
```
</details>

### 📱 ビルドコマンド

<div align="center">

| プラットフォーム | 環境 | コマンド |
|:---:|:---:|:---|
| 🍎 **iOS** | 🔧 dev | `flutter build ios --flavor dev --release` |
| 🍎 **iOS** | 🧪 stg | `flutter build ios --flavor stg --release` |
| 🍎 **iOS** | 🚀 prod | `flutter build ios --flavor prod --release` |
| 🤖 **Android** | 🔧 dev | `flutter build appbundle --flavor dev` |
| 🤖 **Android** | 🧪 stg | `flutter build appbundle --flavor stg` |
| 🤖 **Android** | 🚀 prod | `flutter build appbundle --flavor prod` |

</div>

### 🔧 開発ツール

<details>
<summary><strong>✨ コード品質</strong></summary>

```bash
# 📝 フォーマット
dart format --set-exit-if-changed .

# 🔍 静的解析
flutter analyze .

# 🔧 const修飾子の自動適用
dart fix --apply
```
</details>

<details>
<summary><strong>⚙️ コード生成</strong></summary>

```bash
# 🔨 ワンタイム生成
flutter pub run build_runner build --delete-conflicting-outputs

# 👀 ファイル監視モード
flutter pub run build_runner watch --delete-conflicting-outputs
```
</details>

<details>
<summary><strong>📦 依存関係管理</strong></summary>

```bash
# 🆙 全パッケージのメジャーアップデート
flutter pub upgrade --major-versions
```
</details>

## 🏗️ アーキテクチャ

### 🎯 クリーンアーキテクチャ

本プロジェクトは**クリーンアーキテクチャパターン**を採用し、関心事の分離を実現しています。

<div align="center">
<img src="https://img.shields.io/badge/Architecture-Clean_Architecture-blue?style=for-the-badge" alt="Clean Architecture">
<img src="https://img.shields.io/badge/Pattern-DDD-green?style=for-the-badge" alt="DDD">
<img src="https://img.shields.io/badge/State_Management-Riverpod-purple?style=for-the-badge" alt="Riverpod">
</div>

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

### 🛠️ 技術スタック

<details>
<summary><strong>📱 フロントエンド</strong></summary>

| 技術 | バージョン | 役割 |
|:---|:---:|:---|
| ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white) | `3.3.0+` | クロスプラットフォーム開発 |
| ![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white) | `3.3.0+` | プログラミング言語 |

</details>

<details>
<summary><strong>⚡ 状態管理</strong></summary>

| 技術 | バージョン | 役割 |
|:---|:---:|:---|
| **Riverpod** | `2.6.1` | 状態管理フレームワーク |
| **Hooks Riverpod** | `2.6.1` | React Hooksライクな状態管理 |
| **Flutter Hooks** | `0.21.2` | ライフサイクル管理 |

</details>

<details>
<summary><strong>🔥 バックエンド・インフラ</strong></summary>

| 技術 | 役割 |
|:---|:---|
| ![Firebase](https://img.shields.io/badge/Firebase_Auth-FFA000?style=flat&logo=firebase&logoColor=white) | ユーザー認証 (Google・Apple ID) |
| ![Firestore](https://img.shields.io/badge/Cloud_Firestore-FFA000?style=flat&logo=firebase&logoColor=white) | NoSQLデータベース |
| ![Functions](https://img.shields.io/badge/Cloud_Functions-FFA000?style=flat&logo=firebase&logoColor=white) | サーバーレス関数 |
| ![Messaging](https://img.shields.io/badge/Firebase_Messaging-FFA000?style=flat&logo=firebase&logoColor=white) | プッシュ通知 |
| ![Remote Config](https://img.shields.io/badge/Remote_Config-FFA000?style=flat&logo=firebase&logoColor=white) | リモート設定管理 |
| ![Crashlytics](https://img.shields.io/badge/Crashlytics-FFA000?style=flat&logo=firebase&logoColor=white) | エラー追跡・分析 |

</details>

<details>
<summary><strong>🔄 データ処理</strong></summary>

| 技術 | バージョン | 役割 |
|:---|:---:|:---|
| **Freezed** | `3.1.0` | 不変データクラス生成 |
| **JSON Serializable** | `6.9.5` | JSONシリアライゼーション |

</details>

<details>
<summary><strong>🎨 UI・UX</strong></summary>

| 技術 | バージョン | 役割 |
|:---|:---:|:---|
| **Google Fonts** | `6.2.1` | フォント管理 |
| **Font Awesome Flutter** | `10.8.0` | アイコン |
| **Shimmer** | `3.0.0` | ローディングアニメーション |
| **GPT Markdown** | `1.1.1` | マークダウンレンダリング |

</details>

<details>
<summary><strong>⚙️ ユーティリティ</strong></summary>

| 技術 | バージョン | 役割 |
|:---|:---:|:---|
| **Auto Route** | `10.1.0` | ルーティング |
| **Image Picker/Cropper** | - | 画像選択・編集 |
| **In App Purchase** | - | アプリ内課金 |
| **Shared Preferences** | - | ローカルストレージ |
| **URL Launcher** | - | 外部URL起動 |

</details>

### 🌍 多環境対応

<div align="center">

| 環境 | アプリ名 | Application ID | Bundle ID |
|:---:|:---|:---|:---|
| 🔧 **dev** | BeSharp. DEV | `com.firebaseapp.be_sharp_dev` | `com.firebaseapp.beSharpDev` |
| 🧪 **stg** | BeSharp. STG | `com.firebaseapp.be_sharp_stg` | `com.firebaseapp.beSharpStg` |
| 🚀 **prod** | BeSharp. | `com.firebaseapp.be_sharp_prod` | `com.firebaseapp.beSharpProd` |

</div>

<details>
<summary><strong>⚙️ フレーバー設定詳細</strong></summary>

```yaml
flavors:
  dev:    # 🔧 開発環境
    name: "BeSharp. DEV"
    applicationId: "com.firebaseapp.be_sharp_dev"
    bundleId: "com.firebaseapp.beSharpDev"
  
  stg:    # 🧪 ステージング環境
    name: "BeSharp. STG"
    applicationId: "com.firebaseapp.be_sharp_stg"
    bundleId: "com.firebaseapp.beSharpStg"
  
  prod:   # 🚀 本番環境
    name: "BeSharp."
    applicationId: "com.firebaseapp.be_sharp_prod"
    bundleId: "com.firebaseapp.beSharpProd"
```
</details>

## 🔥 Firebase設定

### 📁 プロジェクト構成

```
firebase/
├── cloud_functions/     # ☁️ Cloud Functions (環境別)
│   ├── dev/            # 🔧 開発環境
│   ├── stg/            # 🧪 ステージング環境
│   └── prod/           # 🚀 本番環境
└── firestore_rules/     # 🔒 Firestoreセキュリティルール
    ├── dev/            # 🔧 開発環境
    ├── stg/            # 🧪 ステージング環境
    └── prod/           # 🚀 本番環境
```

### 🛠️ Firebase機能

<div align="center">

| 機能 | 説明 | 用途 |
|:---:|:---|:---|
| 🔐 **Authentication** | ユーザー認証・アカウント管理 | Google・Apple IDサインイン |
| 🗄️ **Firestore** | リアルタイムデータベース | ユーザーデータ・ランキング管理 |
| ⚡ **Functions** | サーバーサイドロジック | バックエンド処理 |
| 📱 **Messaging** | プッシュ通知配信 | デイリー問題通知 |
| ⚙️ **Remote Config** | アプリ設定の動的変更 | A/Bテスト・設定管理 |
| 📊 **Crashlytics** | エラー追跡・分析 | 品質管理・デバッグ |

</div>

## 🧪 テスト

### 📁 テスト構成

```
test/
├── core/
│   └── util/            # 🔧 ユーティリティ関数のテスト
└── infrastructure/
    └── repository/      # 🗄️ リポジトリ層のテスト
```

### ▶️ テスト実行

```bash
# 🚀 全テスト実行
flutter test

# 📊 カバレッジ付きテスト
flutter test --coverage
```

### 🎭 モックライブラリ

| ライブラリ | バージョン | 用途 |
|:---|:---:|:---|
| **Mockito** | `5.4.6` | モック生成 |
| **Fake Cloud Firestore** | `3.1.0` | Firestoreモック |
| **Firebase Auth Mocks** | `0.14.2` | Firebase Authモック |

## 📱 プラットフォーム対応

<details>
<summary><strong>🍎 iOS設定</strong></summary>

- **最小対応バージョン**: iOS 12.0
- **Xcode設定**: 複数環境対応
- **Podfile管理**: CocoaPodsによる依存関係管理

</details>

<details>
<summary><strong>🤖 Android設定</strong></summary>

- **最小対応バージョン**: Android API 21
- **Gradle設定**: マルチフレーバー対応
- **ProGuard**: リリースビルド時の難読化

</details>

<details>
<summary><strong>🌐 Web・デスクトップ</strong></summary>

- **Web**: PWA対応準備
- **Linux**: CMake設定済み
- **macOS**: ネイティブアプリ対応
- **Windows**: Win32アプリ対応

</details>

## 🚀 運用・監視

### 🔄 CI/CD

<div align="center">
<img src="https://img.shields.io/badge/CI/CD-Codemagic-orange?style=for-the-badge&logo=gitlab&logoColor=white" alt="Codemagic">
</div>

```yaml
# codemagic.yaml
# CodemagicによるCI/CD設定ファイル
```

### 🎨 アセット管理

```
assets/
└── images/              # 🖼️ アプリケーションアイコン
    ├── icon-dev.JPG     # 🔧 開発環境用
    ├── icon-stg.JPG     # 🧪 ステージング環境用
    └── icon-prod.JPG    # 🚀 本番環境用
```

## 📚 ドキュメント

<div align="center">

| ドキュメント | 説明 |
|:---|:---|
| 📝 **CLAUDE.md** | Claude AI開発支援ガイド |
| 🏗️ **CLEAN_ARCHITECTURE.md** | アーキテクチャ詳細 |
| ⚡ **COMMAND.md** | 開発コマンド集 |
| 📋 **analysis_options.yaml** | Dart/Flutterコード規約 |

</div>

## 📄 ライセンス

<div align="center">
<img src="https://img.shields.io/badge/License-Proprietary-red?style=for-the-badge" alt="License">
</div>

> このプロジェクトは非公開です。無断転載・使用を禁止します。

## ⚠️ 開発チーム向け注意事項

<div align="center">

| ⚡ 項目 | 📝 内容 |
|:---|:---|
| 🔄 **環境切り替え** | 必ず適切なフレーバーで実行・テストしてください |
| 🔧 **コード生成** | FreezedやAutoRouteを使用した場合は必ずbuild_runnerを実行してください |
| 🔥 **Firebase設定** | 環境別のFirebase設定ファイルを正しく配置してください |
| 🧪 **テスト** | 新機能追加時は対応するテストも作成してください |
| ✨ **コード品質** | プルリクエスト前に必ずlint・formatを実行してください |

</div>

---

<div align="center">

## 💬 サポート

技術的な質問や問題がある場合は、開発チームまでお気軽にお問い合わせください。

<img src="https://img.shields.io/badge/Made_with-❤️-red?style=for-the-badge" alt="Made with Love">

</div>
