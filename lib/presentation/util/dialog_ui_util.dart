import 'package:be_sharp/infrastructure/model/dialog/text_action.dart';
import 'package:flutter/cupertino.dart';

class DialogUiUtil {
  static void showPopup(
      {required BuildContext context, required List<TextAction> actions}) {
    showCupertinoModalPopup(
        context: context,
        builder: (iContext) {
          return CupertinoActionSheet(
            actions: actions.map((e) {
              return CupertinoActionSheetAction(
                onPressed: () => e.action(iContext),
                child: Text(e.text),
              );
            }).toList(),
          );
        });
  }
}
