import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sonda/core/constants/styles.dart';
import 'package:sonda/core/services/sound_list.dart';

// ignore: must_be_immutable
class SoundItem extends ConsumerStatefulWidget {
  const SoundItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  createState() => _SoundItemState();
}

class _SoundItemState extends ConsumerState<SoundItem> {
  final player = AudioPlayer();

  double _soundVolume = 1;
  bool _iconToggle = false;

  playAudio(Source sound) async {
    player.setVolume(_soundVolume);
    player.play(sound);
    player.setReleaseMode(ReleaseMode.loop);
  }

  pauseAudio() async {
    await player.pause();
  }

  stopAudio() async {
    await player.stop();
  }

  setVolume(volume) async {
    await player.setVolume(volume);
  }

  // resumeAudio() async {
  //   await player.resume();
  // }

  // seekAudio() async {
  //   await player.seek();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: itemContainerBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  soundList[widget.index]['name'].toString(),
                  style: headingTextStyle,
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: buttonColorPrimary,
                    ),
                    child: IconButton(
                        constraints:
                            const BoxConstraints(minWidth: 73, minHeight: 47),
                        icon: _iconToggle
                            ? SvgPicture.asset(
                                'assets/images/sound_on_icon.svg')
                            : SvgPicture.asset(
                                'assets/images/sound_off_icon.svg'),
                        onPressed: () {
                          setState(() {
                            _iconToggle = !_iconToggle;
                            _iconToggle
                                ? playAudio(
                                    AssetSource(
                                      soundList[widget.index]['path']
                                          .toString(),
                                    ),
                                  )
                                : pauseAudio();
                          });
                        }),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: activeSliderColor,
                          inactiveTrackColor: inactiveSliderColor,
                          trackShape: const RectangularSliderTrackShape(),
                          trackHeight: 47,
                          thumbColor: thumbSliderColor,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0),
                          showValueIndicator: ShowValueIndicator.never),
                      child: Slider(
                        value: _soundVolume,
                        max: 10,
                        min: 0,
                        label: _soundVolume.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _soundVolume = value;
                            setVolume(_soundVolume);
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
