import 'package:auto_route/auto_route.dart';
import 'package:nafa7at/features/home/ui/home_screen.dart';
import 'package:nafa7at/features/pray/ui/pray_screen.dart';
import 'package:nafa7at/features/settings/ui/settings_screen.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: BottomNavBarRoute.page,
      initial: true,
      children: [
        AutoRoute(
          page: HomeTabRoute.page,
          initial: true,
          children: [
            CustomRoute(
              page: HomeRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
          ],
        ),
        AutoRoute(
          page: PrayTabRoute.page,
          children: [
            CustomRoute(
              page: PrayRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
          ],
        ),
        AutoRoute(
          page: SettingsTabRoute.page,
          children: [
            CustomRoute(
              page: SettingsRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
          ],
        ),
      ],
    ),
  ];
}

@RoutePage(name: "BottomNavBarRoute")
class BottomNavBar extends AutoRouter {
  const BottomNavBar({super.key});
}

@RoutePage(name: "HomeTabRoute")
class HomeTab extends AutoRouter {
  const HomeTab({super.key});
}

@RoutePage(name: "PrayTabRoute")
class PrayTab extends AutoRouter {
  const PrayTab({super.key});
}

@RoutePage(name: "SettingsTabRoute")
class SettingsTab extends AutoRouter {
  const SettingsTab({super.key});
}
