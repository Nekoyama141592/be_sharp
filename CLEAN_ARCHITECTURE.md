lib/
  ├── core/
  │   ├── exception/
  │   ├── extension/
  │   ├── provider/
  │   └── util/
  ├── domain/
  │   ├── entity/ # アプリ共通のモデル, ドメインエンティティを定義
  │   ├── value/ # ドメインエンティティで使用するバリューオブジェクトを定義
  │   ├── repository_interface/ # 外部リソースにアクセスするレポジトリのインターフェースを定義
  │   └── use_case_interface/ # アプリケーションの機能に関するユースケースのインターフェースを定義
  ├── application/
  │   └── usecase/
  ├── infrastructure/
  │   └── repository/
  ├── presentation/
  │   ├── component/
  │   ├── page/
  │   ├── notifier/
  │   ├── state/
  │   └── navigation/
  └── main.dart