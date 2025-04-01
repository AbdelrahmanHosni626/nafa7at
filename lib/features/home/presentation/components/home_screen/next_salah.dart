import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';

class NextSalah extends StatelessWidget {
  const NextSalah({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
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
                      state.mawa3idSalahModel.date.dateHijri!.day,
                      style: context.textTheme.titleSmall!.copyWith(
                        color: context.colorScheme.outlineVariant,
                      ),
                    ),
                    Text(
                      state.mawa3idSalahModel.prayerTimes.dhuhr,
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
                      "${context.localizedText.nextSalah} ${state.mawa3idSalahModel.date.dateHijri!.day}",
                      style: context.textTheme.bodySmall!.copyWith(
                        color: context.colorScheme.outlineVariant,
                      ),
                    ),
                    Text(
                      '03:30 ',
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
      },
    );
  }
}
