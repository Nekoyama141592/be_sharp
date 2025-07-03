import 'package:be_sharp/core/util/route_util.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/private_user/private_user_notifier_provider.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/latest_problem/latest_problem_notifier_provider.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/products/products_notifier.dart';
import 'package:be_sharp/presentation/util/bnb_ui_util.dart';
import 'package:be_sharp/presentation/common/drawer/original_drawer.dart';
import 'package:be_sharp/presentation/page/basic_page.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/home_screen/home_screen.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/latest_problem_screen.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/products_screen/products_screen.dart';
import 'package:be_sharp/presentation/root_page/create_user_answer_page.dart';
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
    final latestProblemState = ref.watch(latestProblemNotifierProvider).value;
    final isNewProblem = latestProblemState?.isNewProblem ?? false;
    final problemId = latestProblemState?.problemId;
    if (isNewProblem && problemId != null) {
      final path = CreateUserAnswerPage.generatePath(problemId);
      RouteUtil.pushPath(context, path);
    }
    return BasicPage(
        drawer: const OriginalDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: BNBUIUtil.values(),
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
            ProductsScreen()
          ],
        ));
  }
}
