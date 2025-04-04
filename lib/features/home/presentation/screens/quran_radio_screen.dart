import 'package:audio_session/audio_session.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nafa7at/core/util/extensions.dart';
import 'package:nafa7at/features/shared/widgets/nafa7at_app_bar.dart';

@RoutePage()
class QuranRadioScreen extends StatefulWidget {
  const QuranRadioScreen({super.key});

  @override
  State<QuranRadioScreen> createState() => _QuranRadioScreenState();
}

class _QuranRadioScreenState extends State<QuranRadioScreen> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _setup();
  }

  Future<void> _setup() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());

    await player.setUrl('');
    player.play();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Nafa7atAppBar(title: context.localizedText.quranRadio),
      ),
      body: Center(
        child: StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playing = snapshot.data?.playing ?? false;
            return IconButton(
              iconSize: 64,
              icon: Icon(playing ? Icons.pause_circle : Icons.play_circle),
              onPressed: () {
                if (playing) {
                  player.pause();
                } else {
                  player.play();
                }
              },
            );
          },
        ),
      ),
    );
  }
}
