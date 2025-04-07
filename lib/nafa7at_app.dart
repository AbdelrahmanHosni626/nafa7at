import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/constants/app_constants.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/generated/l10n.dart';
import 'package:nafa7at/route_observer.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';
import 'package:nafa7at/settings/theme/theme_manager.dart';

class Nafa7atApp extends StatefulWidget {
  const Nafa7atApp({super.key});

  static late S locale;

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
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          onGenerateTitle: (context) {
            Nafa7atApp.locale = context.localizedText;
            return Nafa7atApp.locale.appName;
          },
          locale: Locale(AppConstants.arCode, AppConstants.egCode),
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeManager.lightTheme(),
        );
      },
    );
  }
}
