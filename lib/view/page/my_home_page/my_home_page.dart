import 'package:be_sharp/provider/keep_alive/notifier/private_user/private_user_provider.dart';
import 'package:be_sharp/provider/view_model/my_home/my_home_view_model.dart';
import 'package:be_sharp/provider/keep_alive/notifier/purchases/purchases_view_model.dart';
import 'package:be_sharp/ui_core/bnb_ui_core.dart';
import 'package:be_sharp/view/common/drawer/original_drawer.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/page/my_home_page/components/home_screen/home_screen.dart';
import 'package:be_sharp/view/page/my_home_page/components/latest_problem_screen.dart';
import 'package:be_sharp/view/page/my_home_page/components/purchases_screen/purchases_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final pageController = usePageController();
    ref.watch(privateUserNotifierProvider);
    ref.watch(myHomeViewModelProvider);
    ref.watch(purchasesProvider);
    return BasicPage(
        drawer: const OriginalDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: BNBUICore.values(),
            currentIndex: pageIndex.value,
            onTap: (index) async {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn);
            }),
        child: PageView(
          onPageChanged: (index) => pageIndex.value = index,
          controller: pageController,
          children: const [
            HomeScreen(),
            LatestProblemScreen(),
            PurchasesScreen()
          ],
        ));
  }
}
