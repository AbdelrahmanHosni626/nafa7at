import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuranViewScreen extends StatelessWidget {
  const QuranViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (BuildContext context, int index) => CachedNetworkImage(
                imageUrl: "https://alquran.vip/APIs/quran-pages/001.png",
              ),
        ),
      ),
    );
  }
}
