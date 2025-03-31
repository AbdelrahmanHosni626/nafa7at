import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

@RoutePage(name: "BottomNavBarRoute")
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<PageRouteInfo<dynamic>> routes = [
    const HomeRoute(),
    const PrayRoute(),
    const SettingsRoute(),
  ];
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: routes,
      homeIndex: 1,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mosque_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Pray',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }

  handleNavbarItemTap({required int value, required TabsRouter tabsRouter}) {
    if (tabsRouter.activeIndex == value) {
      tabsRouter.current.router.navigate(routes[value]);
    } else {
      tabsRouter.setActiveIndex(value);
    }
  }
}
