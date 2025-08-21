import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/private_user/private_user_notifier_provider.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/products/products_notifier.dart';
import 'package:be_sharp/presentation/util/bnb_ui_util.dart';
import 'package:be_sharp/presentation/common/drawer/original_drawer.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/home_screen/home_screen.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/latest_problem_screen.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/products_screen/products_screen.dart';
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
    ref.watch(productsNotifierProvider);
    return BasicPage(
        drawer: const OriginalDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.surface,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.inactive,
            elevation: 0,
            items: BNBUIUtil.values(),
            currentIndex: pageIndex.value,
            onTap: (index) async {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            }),
        child: PageView(
          onPageChanged: (index) => pageIndex.value = index,
          controller: pageController,
          children: const [
            LatestProblemScreen(),
            HomeScreen(),
            ProductsScreen()
          ],
        ));
  }
}
