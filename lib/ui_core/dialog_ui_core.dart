import 'package:be_sharp/model/dialog/text_action.dart';
import 'package:flutter/cupertino.dart';

class DialogUiCore {
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
