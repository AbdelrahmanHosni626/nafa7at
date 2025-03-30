import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';
import 'package:solar_icons/solar_icons.dart';

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
      homeIndex: 0,
      bottomNavigationBuilder: (_, tabsRouter) {
        return PopScope(
          canPop: tabsRouter.activeIndex < 1,
          onPopInvokedWithResult: (didPop, result) {
            if (tabsRouter.activeIndex != 0) {
              tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
            }
          },
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: SizedBox(
                height: 60.h,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: BottomNavigationBar(
                      currentIndex: tabsRouter.activeIndex,
                      onTap: (value) {
                        handleNavbarItemTap(
                          value: value,
                          tabsRouter: tabsRouter,
                        );
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(SolarIconsOutline.home, size: 24.sp),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                            SolarIconsOutline.videoLibrary,
                            size: 24.sp,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(SolarIconsOutline.magnifier, size: 24.sp),
                          label: '',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
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
