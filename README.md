# BeSharp.

## 概要

「BeSharp.」は一日一回、ランダムな時間に通知が来て制限時間以内に数学の問題を解くアプリです

## リリース

2025年4月

## 主な機能

- **回答**： 問題のページから回答を作成します
- **ランキング**：ランキングを見ます

### アプリケーションへのアクセス

ブラウザを開き、以下のURLにアクセスします。
- **iOS**： https://apps.apple.com/us/app/besharp/id6740705612
- **Android**： https://play.google.com/store/apps/details?id=com.firebaseapp.be_sharp_prod

### 前提条件

- Xcode
- Android Studio
- Flutter

### アプリケーションの起動

以下のコマンドでアプリケーションを起動します。

```bash
# dev
flutter run --flavor dev -t lib/main_dev.dart

# prod
flutter run --flavor prod -t lib/main_prod.dart
```

## ディレクトリ構成

```
be_sharp/
│
├── android/              # Androidディレクトリ
├── assets/               # アセットディレクトリ
│    ├── images/          # その他の画像アセットを格納
├── ios/                  # iOSディレクトリ
├── lib/                  # ライブラリディレクトリ
│    ├── constants/       # 定数ファイルを格納
│    ├── core/            # 動作において共通する処理のファイルを格納
│    ├── extensions/      # パッケージのクラスを拡張
│    ├── infrastructure/  # 通信に関わるファイルを格納
│    ├── model/           # freezedを使用したmodelのファイルを格納
│    ├── provider/        # Riverpodを用いたファイルを格納
│    ├── repository/      # 例外処理を行うファイルを格納
│    ├── typedefs/        # typedefsを記述するファイルを格納
│    ├── ui_core/         # UI描画において共通する処理のファイルを格納
│    ├── view/            # 画面に関わるファイルを格納
├── .gitignore            # Gitに含めないファイルを記述
├── analysis_options.yaml # コード記述のルールを定める
├── COMMAND.md            # 使用コマンドファイル
├── pubspec.yaml          # 依存関係ファイル
├── pubspec.lock          # 依存関係ロックファイル
└── README.md             # このREADMEファイル
