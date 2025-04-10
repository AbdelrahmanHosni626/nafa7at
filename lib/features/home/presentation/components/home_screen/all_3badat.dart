import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nafa7at/core/constants/api_constants.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/core/util/spacing.dart';
import 'package:nafa7at/features/home/home_helper/home_helper.dart';
import 'package:nafa7at/features/shared/animations/custom_fade_animation.dart';

class All3badat extends StatefulWidget {
  const All3badat({super.key});

  @override
  State<All3badat> createState() => _All3badatState();
}

class _All3badatState extends State<All3badat> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  Future<void> toggleRadio(bool value) async {
    setState(() => isPlaying = value);
    if (value) {
      try {
        await _player.setUrl(ApiConstants.quranRadio);
        await _player.play();
      } catch (e) {
        debugPrint("Error playing radio: $e");
        setState(() => isPlaying = false);
      }
    } else {
      await _player.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomFadeAnimation(
      duration: const Duration(seconds: 2),
      child: GridView.builder(
        itemCount: HomeHelper.items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.w,
          mainAxisSpacing: 7.h,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).r,
            child: GestureDetector(
              onTap: () {
                HomeHelper.items[index]["title"] ==
                        context.localizedText.quranRadio
                    ? null
                    : context.pushRoute(HomeHelper.items[index]["route"]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(
                        alpha: 0.1,
                      ), // Shadow color
                      blurRadius: 20,
                      offset: Offset(0, 2.5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeHelper.items[index]["title"] ==
                            context.localizedText.quranRadio
                        ? Switch(value: isPlaying, onChanged: toggleRadio)
                        : SvgPicture.asset(
                          HomeHelper.items[index]["image"],
                          height: 60.h,
                          width: 60.w,
                        ),
                    verticalSpace(8),
                    Text(
                      HomeHelper.items[index]["title"],
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
