import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/features/botton_nav_bar/bottom_nav_bar.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/home/presentation/screens/Azkar_masaa_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/all_ad3ia_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_after_salah_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_azaan_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_home_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_khalaa_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_mosque_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_motanwi3a_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_sabah_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_salah_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_sleep_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_wakeup_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/azkar_wudu_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/home_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/qibla_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/quran_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/quran_view_screen.dart';
import 'package:nafa7at/features/home/presentation/screens/tasbih_screen.dart';
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
            CustomRoute(
              page: QuranRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarSalahRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarAfterSalahRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarSabahRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarMasaaRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarWakeupRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarSleepRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarMosqueRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarAzaanRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarWuduRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarHomeRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarKhalaaRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: TasbihRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AllAd3iaRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: AzkarMotanwi3aRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: QiblaRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              duration: Duration(milliseconds: 300),
            ),
            CustomRoute(
              page: QuranViewRoute.page,
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
class Home extends AutoRouter implements AutoRouteWrapper {
  const Home({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<HomeCubit>()
                ..getPrayerTimes()
                ..getSuraList()
                ..getAzkarList(),
      child: this,
    );
  }
}

@RoutePage(name: 'PrayTabRoute')
class Pray extends AutoRouter {
  const Pray({super.key});
}

@RoutePage(name: 'SettingsTabRoute')
class Settings extends AutoRouter {
  const Settings({super.key});
}
