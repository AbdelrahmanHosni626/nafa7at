import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/shared/animations/custom_fade_animation.dart';
import 'package:nafa7at/nafa7at_app.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

class All3badat extends StatefulWidget {
  const All3badat({super.key});

  @override
  State<All3badat> createState() => _All3badatState();
}

class _All3badatState extends State<All3badat> {
  final List<Map<String, dynamic>> items = [
    {"image": AssetsManager.quran, "title": Nafa7atApp.locale.quran},
    {"image": AssetsManager.azkarSalah, "title": Nafa7atApp.locale.azkarSalah},
    {"image": AssetsManager.azkarSabah, "title": Nafa7atApp.locale.azkarSabah},
    {"image": AssetsManager.azkarMasa2, "title": Nafa7atApp.locale.azkarMasa2},
    {
      "image": AssetsManager.taqwinHijri,
      "title": Nafa7atApp.locale.taqwinHijri,
    },
    {"image": AssetsManager.tasbeh, "title": Nafa7atApp.locale.tasbeh},
    {"image": AssetsManager.allAd3ia, "title": Nafa7atApp.locale.allAd3ia},
    {
      "image": AssetsManager.azkarMotanwi3a,
      "title": Nafa7atApp.locale.azkarMotanwi3a,
    },
    {
      "image": AssetsManager.closestMosques,
      "title": Nafa7atApp.locale.closestMosques,
    },
    {"image": AssetsManager.likes, "title": Nafa7atApp.locale.likes},
  ];

  @override
  Widget build(BuildContext context) {
    return CustomFadeAnimation(
      duration: const Duration(seconds: 3),
      child: GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.w,
          mainAxisSpacing: 7.h,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).r,
            child: GestureDetector(
              onTap: () {
                context.pushRoute(QuranRoute());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(
                        alpha: 0.1,
                      ), // Shadow color
                      blurRadius: 20,
                      offset: Offset(0, 2.5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      items[index]["image"],
                      height: 60.h,
                      width: 60.w,
                    ),
                    verticalSpace(8),
                    Text(
                      items[index]["title"],
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
