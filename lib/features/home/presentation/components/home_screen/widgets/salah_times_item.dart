import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/extensions.dart';

class SalahTimesItem extends StatelessWidget {
  final IconData salahIcon;
  final String salahName;
  final String salahTime;
  const SalahTimesItem({
    super.key,
    required this.salahIcon,
    required this.salahName,
    required this.salahTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            salahIcon,
            size: 20.sp,
            color: context.colorScheme.onPrimary.withValues(alpha: 0.56),
          ),
          Text(
            salahName,
            style: context.textTheme.labelLarge!.copyWith(
              color: context.colorScheme.onPrimary.withValues(alpha: 0.56),
            ),
          ),
          Text(
            salahTime,
            style: context.textTheme.labelSmall!.copyWith(
              color: context.colorScheme.onPrimary.withValues(alpha: 0.56),
            ),
          ),
        ],
      ),
    );
  }
}
