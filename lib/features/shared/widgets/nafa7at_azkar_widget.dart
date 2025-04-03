import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:solar_icons/solar_icons.dart';

class Nafa7atAzkarWidget extends StatelessWidget {
  final int itemCount;
  final String count;
  final String text;
  final String id;
  const Nafa7atAzkarWidget({
    super.key,
    required this.itemCount,
    required this.text,
    required this.id,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18).r,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: context.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14).r,
                    topRight: Radius.circular(14).r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(
                        alpha: 0.1,
                      ), // Shadow color
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    verticalSpace(10),
                    SvgPicture.asset(AssetsManager.azkarFrame),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ).r,
                      child: Text(
                        text.trimRight(),
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: context.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    SvgPicture.asset(AssetsManager.azkarFrame),
                    verticalSpace(10),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14).r,
                    bottomRight: Radius.circular(14).r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(
                        alpha: 0.1,
                      ), // Shadow color
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(SolarIconsOutline.heart),
                      horizontalSpace(30),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: context.colorScheme.primary,
                              width: 2,
                            ),
                          ),
                          child: Text(count),
                        ),
                      ),
                      horizontalSpace(30),
                      Icon(SolarIconsOutline.share),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary,
              borderRadius: BorderRadius.only(topRight: Radius.circular(14).r),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
              child: Text(
                id,
                style: context.textTheme.bodyLarge!.copyWith(
                  color: context.colorScheme.surface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
