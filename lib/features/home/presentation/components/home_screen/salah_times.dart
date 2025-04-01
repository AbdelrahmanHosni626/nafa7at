import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/widgets/salah_times_item.dart';
import 'package:solar_icons/solar_icons.dart';

class SalahTimes extends StatelessWidget {
  const SalahTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.prayerTimesState == BlocState.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.prayerTimesState == BlocState.failure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Container(
            decoration: BoxDecoration(
              color: context.colorScheme.primaryContainer,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.moonStars,
                  salahName: context.localizedText.fajr,
                  salahTime: state.mawa3idSalahModel.prayerTimes.fajr,
                ),
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.sunrise,
                  salahName: context.localizedText.sunrise,
                  salahTime: state.mawa3idSalahModel.prayerTimes.sunrise,
                ),
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.sun2,
                  salahName: context.localizedText.dhuhr,
                  salahTime: state.mawa3idSalahModel.prayerTimes.dhuhr,
                ),
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.cloudSun2,
                  salahName: context.localizedText.asr,
                  salahTime: state.mawa3idSalahModel.prayerTimes.asr,
                ),
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.sunset,
                  salahName: context.localizedText.maghrib,
                  salahTime: state.mawa3idSalahModel.prayerTimes.maghrib,
                ),
                SalahTimesItem(
                  salahIcon: SolarIconsOutline.moon,
                  salahName: context.localizedText.isha,
                  salahTime: state.mawa3idSalahModel.prayerTimes.isha,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
