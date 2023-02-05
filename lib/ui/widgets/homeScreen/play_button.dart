import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonda/core/constants/styles.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool _iconToggle = false;
  bool _textToggle = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _iconToggle = !_iconToggle;
          _textToggle = !_textToggle;
        });
      },
      backgroundColor: colorDarkGrey,
      child: _iconToggle
          ? SvgPicture.asset('assets/images/sonda_pause_icon.svg')
          : const Icon(
              Icons.play_arrow,
              size: 30,
              color: colorWhite,
            ),
    );
  }
}
