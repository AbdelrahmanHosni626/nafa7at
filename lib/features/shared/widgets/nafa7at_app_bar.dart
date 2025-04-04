import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class Nafa7atAppBar extends StatelessWidget {
  final String title;
  const Nafa7atAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(SolarIconsOutline.forward),
        onPressed: () => context.maybePop(),
      ),
      title: Text(title),
    );
  }
}
