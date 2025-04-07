import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_app_bar.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_azkar_widget.dart';

@RoutePage()
class AzkarMotanwi3aScreen extends StatelessWidget {
  const AzkarMotanwi3aScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Nafa7atAppBar(title: context.localizedText.azkarMotanwi3a),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.azkarList.azkarMotanwi3a.length,
            separatorBuilder: (context, index) => verticalSpace(20),
            itemBuilder: (context, index) {
              final item = state.azkarList.azkarMotanwi3a;
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
    );
  }
}
