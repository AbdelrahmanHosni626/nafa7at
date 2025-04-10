import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nafa7at/core/util/extensions.dart';
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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      routes: routes,
      homeIndex: 1,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          enableFeedback: false,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mosque_rounded),
              label: context.localizedText.homeTab,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded),
              label: context.localizedText.prayTab,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: context.localizedText.settingsTab,
            ),
          ],
        );
      },
    );
  }
}
