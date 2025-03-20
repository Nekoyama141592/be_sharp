import 'package:be_sharp/constants/edit_user_constants.dart';

class ValidatorUICore {
  static String? nickName(String? value) {
    if (value!.length > EditUserConstants.maxNickNameLimit) {
      return EditUserConstants.textLimitMsg(
          EditUserConstants.maxNickNameLimit, value);
    } else {
      return null;
    }
  }

  static String? bio(String? value) {
    if (value!.isEmpty) {
      return "入力を行なってください";
    } else if (value.length > EditUserConstants.maxBioLimit) {
      return EditUserConstants.textLimitMsg(
          EditUserConstants.maxBioLimit, value);
    } else {
      return null;
    }
  }
  static String? text(String? value) {
    return value!.isNotEmpty ? null : "入力を行って下さい";
  }

  static String? number(String? value) {
    if (value == null || value.isEmpty) {
      return '入力をしてください';
    } else if (int.tryParse(value) == null) {
      return '数字を入力してください';
    } else {
      return null;
    }
  }
}
