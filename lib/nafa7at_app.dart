import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/route_observer.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

class Nafa7atApp extends StatelessWidget {
  const Nafa7atApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.noScaling),
            child: child!,
          );
        },
        routerConfig: getIt<AppRouter>().config(
          navigatorObservers: () => [MyRouteObserver(), AutoRouteObserver()],
        ),
      ),
    );
  }
}
