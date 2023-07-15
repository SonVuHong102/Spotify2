import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify2/presenter/base/base_stateless_page.dart';
import 'package:spotify2/presenter/router/router.gr.dart';

@RoutePage()
class HomePage extends BaseStatelessPage {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        LibraryRoute(),
        HistoryRoute(),
        LibraryRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            appBar: AppBar(
                title: Text(context.topRoute.name),
                leading: const AutoLeadingButton()),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Users',
                  icon: Icon(Icons.abc),
                ),
                BottomNavigationBarItem(
                  label: 'Users',
                  icon: Icon(Icons.abc),
                ),
                BottomNavigationBarItem(
                  label: 'Users',
                  icon: Icon(Icons.abc),
                ),
              ],
            ));
      },
    );
  }
}
