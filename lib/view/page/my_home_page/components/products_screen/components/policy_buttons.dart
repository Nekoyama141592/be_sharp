import 'dart:io';

import 'package:be_sharp/core/util/url_util.dart';
import 'package:be_sharp/view/common/policy/policy_button.dart';
import 'package:flutter/material.dart';

class PolicyButtons extends StatelessWidget {
  const PolicyButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const PolicyButton(
            label: 'プライバシーポリシー',
            onPressed: UrlUtil.toPrivacyPage,
          ),
          const PolicyButton(
            label: '利用規約',
            onPressed: UrlUtil.toTosPage,
          ),
          if (Platform.isIOS)
            const PolicyButton(
              label: 'EULA',
              onPressed: UrlUtil.toEULAPage,
            ),
        ],
      ),
    );
  }
}
