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
import 'package:nafa7at/features/home/home_helper/quran_page_view_helper.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_loading_shimmer.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

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
  late final HomeCubit homeCubit;

  @override
  void initState() {
    super.initState();
    homeCubit = context.read<HomeCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.wait([homeCubit.getSuraList()]);
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10).r,
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                switch (state.suraListState) {
                  case BlocState.initial:
                  case BlocState.loading:
                    return Nafa7atLoadingShimmer(
                      nafa7atLoadingType: Nafa7atLoadingType.listView,
                      listViewItemCount: 114,
                      cardHeight: 40,
                      separatorHeight: 22,
                      borderRadius: BorderRadius.circular(4),
                    );
                  case BlocState.failure:
                    return Center(child: Text(state.errorMessage));
                  case BlocState.success:
                    return ListView.separated(
                      itemCount: state.quranModel.length,
                      separatorBuilder:
                          (BuildContext context, int index) =>
                              verticalSpace(22),
                      itemBuilder: (context, index) {
                        final item = state.quranModel[index];
                        return Container(
                          height: 40.h,
                          width: context.screenWidth,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceContainerHighest
                                .withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: InkWell(
                            onTap: () {
                              final pageNumber =
                                  QuranHelper.surahToPage[int.parse(item.id)];
                              if (pageNumber != null) {
                                context.pushRoute(
                                  QuranViewRoute(
                                    pageNumber: pageNumber,
                                    homeCubit: context.read<HomeCubit>(),
                                  ),
                                );
                              }
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20).r,
                              child: Row(
                                children: [
                                  Text(item.number),
                                  horizontalSpace(20),
                                  Text(item.nameAr),
                                  Spacer(),
                                  suraType(item.type),
                                ],
                              ),
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
      ),
    );
  }

  Widget suraType(String type) {
    if (type == "Meccan") {
      return SvgPicture.asset(AssetsManager.quran);
    } else if (type == "Medinan") {
      return SvgPicture.asset(AssetsManager.allAd3ia);
    }
    return SizedBox.shrink();
  }
}
