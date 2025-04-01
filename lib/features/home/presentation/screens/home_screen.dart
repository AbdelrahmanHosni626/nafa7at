import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/all_3badat.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/date_and_place.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/salah_times.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/widgets/next_salah.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            DateAndPlace(),
            verticalSpace(8),
            SalahTimes(),
            NextSalah(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40).r,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4).r,
                  child: Center(
                    child: Text(
                      context.localizedText.all3badat,
                      style: context.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(18),
            All3badat(),
          ],
        ),
      ),
    );
  }
}
