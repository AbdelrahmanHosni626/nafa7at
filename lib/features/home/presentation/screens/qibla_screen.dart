import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Qibla Screen")));
  }
}
