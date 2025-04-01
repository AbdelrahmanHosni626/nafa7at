import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/extensions.dart';

class NextSalah extends StatelessWidget {
  const NextSalah({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18).r,
      child: Stack(
        children: [
          Image.asset(AssetsManager.salahTime),
          Positioned(
            top: 15.h,
            left: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الظهر',
                  style: context.textTheme.titleSmall!.copyWith(
                    color: context.colorScheme.outlineVariant,
                  ),
                ),
                Text(
                  '12:05',
                  style: context.textTheme.displaySmall!.copyWith(
                    color: context.colorScheme.outlineVariant,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60.h,
            left: 20.w,
            child: Text(
              'م',
              style: context.textTheme.titleSmall!.copyWith(
                color: context.colorScheme.outlineVariant,
              ),
            ),
          ),
          Positioned(
            top: 90.h,
            left: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'الصلاة التالية: العصر',
                  style: context.textTheme.bodySmall!.copyWith(
                    color: context.colorScheme.outlineVariant,
                  ),
                ),
                Text(
                  '03:30 مساءً',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: context.colorScheme.outlineVariant,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
