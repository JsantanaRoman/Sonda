import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sonda/core/constants/styles.dart';

class PlaylistModal extends StatelessWidget {
  const PlaylistModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.83,
        color: globalBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Playlist",
                    style: modalHeadingTextStyleOne,
                    textAlign: TextAlign.start,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        SvgPicture.asset("assets/images/modal_close_icon.svg"),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                children: List.generate(
                  10,
                  (index) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: playlistBoxColor,
                          borderRadius: BorderRadius.circular(126),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
