// material
import 'package:flutter/material.dart';

class BNBUICore {
  static List<BottomNavigationBarItem> values() => [
        const BottomNavigationBarItem(
            label: 'ホーム',
            icon: Icon(
              Icons.home,
            )),
        const BottomNavigationBarItem(
            label: '問題',
            icon: Icon(
              Icons.calculate,
            )),
        const BottomNavigationBarItem(
            label: '課金',
            icon: Icon(
              Icons.subscriptions,
            )),
      ];
}
