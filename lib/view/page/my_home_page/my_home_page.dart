import 'package:be_sharp/provider/private_user_provider.dart';
import 'package:be_sharp/ui_core/bnb_ui_core.dart';
import 'package:be_sharp/view/common/original_drawer.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/page/my_home_page/components/home_screen.dart';
import 'package:be_sharp/view/page/my_home_page/components/problems_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final pageIndex = useState(0);
    final pageController = usePageController();
    ref.watch(privateUserProvider);
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
            ProblemsScreen(),
            SizedBox(),
          ],
        ));
  }
}
