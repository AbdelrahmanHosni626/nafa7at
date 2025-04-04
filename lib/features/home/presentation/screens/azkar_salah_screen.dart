import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_app_bar.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_azkar_widget.dart';

@RoutePage()
class AzkarSalahScreen extends StatelessWidget {
  const AzkarSalahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Nafa7atAppBar(title: context.localizedText.azkarSalah),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ListView.separated(
              itemCount: state.azkarList.azkarSalah.length,
              separatorBuilder: (context, index) => verticalSpace(20),
              itemBuilder: (BuildContext context, int index) {
                final item = state.azkarList.azkarSalah;
                return Nafa7atAzkarWidget(
                  itemCount: item.length,
                  text: item[index].text,
                  id: item[index].id.toString(),
                  count: item[index].count.toString(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
