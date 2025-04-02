import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/home/home_helper/quran_page_view_helper.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/widgets/salah_times_item.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_loading_shimmer.dart';
import 'package:solar_icons/solar_icons.dart';

class SalahTimes extends StatelessWidget {
  const SalahTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        switch (state.prayerTimesState) {
          case BlocState.initial:
          case BlocState.loading:
            return Nafa7atLoadingShimmer(
              nafa7atLoadingType: Nafa7atLoadingType.custom,
              borderRadius: BorderRadius.zero,
              cardWidth: context.screenWidth,
              cardHeight: 104.h,
            );
          case BlocState.failure:
            return Center(child: Text(state.errorMessage));
          case BlocState.success:
            final now = DateTime.now();
            final currentPrayer = QuranHelper.getCurrentPrayerTime(
              now,
              state.mawa3idSalahModel.prayerTimes,
            );
            return Container(
              height: 104.h,
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.moonStars,
                    salahName: context.localizedText.fajr,
                    salahTime: state.mawa3idSalahModel.prayerTimes.fajr,
                    isActive: currentPrayer == PrayerTime.fajr,
                  ),
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.sunrise,
                    salahName: context.localizedText.sunrise,
                    salahTime: state.mawa3idSalahModel.prayerTimes.sunrise,
                    isActive: currentPrayer == PrayerTime.sunrise,
                  ),
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.sun2,
                    salahName: context.localizedText.dhuhr,
                    salahTime: state.mawa3idSalahModel.prayerTimes.dhuhr,
                    isActive: currentPrayer == PrayerTime.dhuhr,
                  ),
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.cloudSun2,
                    salahName: context.localizedText.asr,
                    salahTime: state.mawa3idSalahModel.prayerTimes.asr,
                    isActive: currentPrayer == PrayerTime.asr,
                  ),
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.sunset,
                    salahName: context.localizedText.maghrib,
                    salahTime: state.mawa3idSalahModel.prayerTimes.maghrib,
                    isActive: currentPrayer == PrayerTime.maghrib,
                  ),
                  SalahTimesItem(
                    salahIcon: SolarIconsOutline.moon,
                    salahName: context.localizedText.isha,
                    salahTime: state.mawa3idSalahModel.prayerTimes.isha,
                    isActive: currentPrayer == PrayerTime.isha,
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
