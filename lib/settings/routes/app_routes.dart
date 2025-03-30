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
        CustomRoute(page: HomeRoute.page, initial: true),
        CustomRoute(page: PrayRoute.page),
        CustomRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}

@RoutePage(name: "BottomNavBarRoute")
class BottomNavBar extends AutoRouter {
  const BottomNavBar({super.key});
}
