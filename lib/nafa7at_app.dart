import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/route_observer.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';
import 'package:nafa7at/settings/theme/theme_manager.dart';

class Nafa7atApp extends StatefulWidget {
  const Nafa7atApp({super.key});

  @override
  State<Nafa7atApp> createState() => _Nafa7atAppState();
}

class _Nafa7atAppState extends State<Nafa7atApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl, // Change to LTR if needed
              child: child!,
            );
          },
          routerConfig: getIt<AppRouter>().config(
            navigatorObservers: () => [MyRouteObserver(), AutoRouteObserver()],
          ),
          theme: ThemeManager.lightTheme(),
        );
      },
    );
  }
}
