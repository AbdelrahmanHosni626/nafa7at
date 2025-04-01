import 'package:flutter/material.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/widgets/salah_times_item.dart';
import 'package:solar_icons/solar_icons.dart';

class SalahTimes extends StatelessWidget {
  const SalahTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: context.colorScheme.primaryContainer),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SalahTimesItem(
            salahIcon: SolarIconsOutline.moonStars,
            salahName: "الفجر",
            salahTime: "04:20",
          ),
          SalahTimesItem(
            salahIcon: SolarIconsOutline.sunrise,
            salahName: "الشروق",
            salahTime: "06:05",
          ),
          SalahTimesItem(
            salahIcon: SolarIconsOutline.sun2,
            salahName: "الظهر",
            salahTime: "12:05",
          ),
          SalahTimesItem(
            salahIcon: SolarIconsOutline.cloudSun2,
            salahName: "العصر",
            salahTime: "03:30",
          ),
          SalahTimesItem(
            salahIcon: SolarIconsOutline.sunset,
            salahName: "المغرب",
            salahTime: "06:13",
          ),
          SalahTimesItem(
            salahIcon: SolarIconsOutline.moon,
            salahName: "العشاء",
            salahTime: "07:30",
          ),
        ],
      ),
    );
  }
}
