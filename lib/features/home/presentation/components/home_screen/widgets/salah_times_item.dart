import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/extensions.dart';

class SalahTimesItem extends StatelessWidget {
  final IconData salahIcon;
  final String salahName;
  final String salahTime;
  final bool isActive;

  const SalahTimesItem({
    super.key,
    required this.salahIcon,
    required this.salahName,
    required this.salahTime,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14).r,
      decoration: BoxDecoration(
        color: isActive ? context.colorScheme.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(4).r,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            salahIcon,
            size: isActive ? 30.sp : 20.sp,
            color:
                isActive
                    ? context.colorScheme.surface
                    : context.colorScheme.onPrimary.withValues(alpha: 0.56),
          ),
          Text(
            salahName,
            style:
                isActive
                    ? context.textTheme.bodySmall!.copyWith(
                      color: context.colorScheme.surface,
                      fontWeight: FontWeight.w700,
                    )
                    : context.textTheme.labelLarge!.copyWith(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.56,
                      ),
                    ),
          ),
          Text(
            salahTime,
            style:
                isActive
                    ? context.textTheme.bodySmall!.copyWith(
                      color: context.colorScheme.surface,
                      fontWeight: FontWeight.w700,
                    )
                    : context.textTheme.labelLarge!.copyWith(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.56,
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}
