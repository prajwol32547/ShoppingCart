import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/Routes/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const Home(),
        Cart(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: 'Posts', icon: Icon(Icons.card_travel))
              ],
            ));
      },
    );
  }
}
