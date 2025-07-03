class EditUserConstants {
  static const int maxNickNameLimit = 32;
  static const int maxBioLimit = 200;
  static const String bioHelpMsg = "プロフィールに表示される紹介文です。";
  static const String userNameHelpMsg = "検索されるユーザー名です。";
  static String textLimitMsg(int limit, String value) =>
      "最大$limit文字までです。（現在${value.length}文字)";
}
