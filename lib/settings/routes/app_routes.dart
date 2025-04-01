import 'package:auto_route/auto_route.dart';
import 'package:nafa7at/features/botton_nav_bar/bottom_nav_bar.dart';
import 'package:nafa7at/features/home/presentation/screens/home_screen.dart';
import 'package:nafa7at/features/pray/ui/pray_screen.dart';
import 'package:nafa7at/features/settings/ui/settings_screen.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: "/",
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

@RoutePage(name: 'HomeTabRoute')
class Home extends AutoRouter {
  const Home({super.key});
}

@RoutePage(name: 'PrayTabRoute')
class Pray extends AutoRouter {
  const Pray({super.key});
}

@RoutePage(name: 'SettingsTabRoute')
class Settings extends AutoRouter {
  const Settings({super.key});
}
