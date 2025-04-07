import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/all_3badat.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/date_and_place.dart';
import 'package:nafa7at/features/home/presentation/components/home_screen/salah_times.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        await Future.wait([homeCubit.getPrayerTimes()]);
      },
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              DateAndPlace(),
              verticalSpace(8),
              SalahTimes(),
              verticalSpace(18),
              All3badat(),
            ],
          ),
        ),
      ),
    );
  }
}
