import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_cached_network_image.dart';

@RoutePage()
class QuranViewScreen extends StatefulWidget implements AutoRouteWrapper {
  final int pageNumber;
  final HomeCubit homeCubit;
  const QuranViewScreen({
    super.key,
    required this.pageNumber,
    required this.homeCubit,
  });

  @override
  State<QuranViewScreen> createState() => _QuranViewScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<HomeCubit>()..getQuranPagesList(),
      child: this,
    );
  }
}

class _QuranViewScreenState extends State<QuranViewScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.quranPagesListState == BlocState.success) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_pageController.hasClients) {
                  _pageController.animateToPage(
                    widget.pageNumber - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              });
            }
          },
          builder: (context, state) {
            if (state.quranPagesListState == BlocState.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.quranPagesListState == BlocState.failure) {
              return Center(child: Text(state.errorMessage));
            } else {
              return PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: state.quranPagesList.pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Nafa7atCachedNetworkImage(
                    imageUrl: state.quranPagesList.pages[index].pageUrl,
                    fit: BoxFit.fill,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
