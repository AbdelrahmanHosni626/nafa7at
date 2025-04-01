import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';

@RoutePage()
class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20).r,
          child: ListView.separated(
            itemCount: 114,
            separatorBuilder:
                (BuildContext context, int index) => verticalSpace(22),
            itemBuilder: (context, index) {
              return Container(
                height: 40.h,
                width: double.infinity,
                color: context.colorScheme.surfaceContainerHighest,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  child: Row(
                    children: [
                      Text("1"),
                      horizontalSpace(20),
                      Text("Sura"),
                      Spacer(),
                      Text("Makka"),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
