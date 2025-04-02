import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';

@RoutePage()
class QuranScreen extends StatefulWidget implements AutoRouteWrapper {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getSuraList(),
      child: this,
    );
  }
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10).r,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state.suraListState == BlocState.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.suraListState == BlocState.failure) {
                return Center(child: Text(state.errorMessage));
              } else {
                return ListView.separated(
                  itemCount: 114,
                  separatorBuilder:
                      (BuildContext context, int index) => verticalSpace(22),
                  itemBuilder: (context, index) {
                    final item = state.quranModel[index];
                    return Container(
                      height: 40.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.colorScheme.surfaceContainerHighest
                            .withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20).r,
                        child: Row(
                          children: [
                            Text(item.number),
                            horizontalSpace(20),
                            Text(item.nameAr),
                            Spacer(),
                            SvgPicture.asset(AssetsManager.quran),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget suraType(String type) {
    if (type == "Meccan") {
      return SvgPicture.asset(AssetsManager.kaaba);
    } else if (type == "Medinan") {
      return SvgPicture.asset(AssetsManager.nabawiMosque);
    }
    return SizedBox.shrink();
  }
}
