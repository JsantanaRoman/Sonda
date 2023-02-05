import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sonda/core/constants/styles.dart';
import 'package:sonda/core/services/sound_list.dart';
import 'package:sonda/ui/widgets/playlist_modal/playlist_modal.dart';
import 'package:sonda/ui/widgets/homeScreen/play_button.dart';
import 'package:sonda/ui/widgets/settings_modal/settings_modal.dart';
import 'package:sonda/ui/widgets/homeScreen/sound_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/logo.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              HapticFeedback.lightImpact();
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) => const PlaylistModal(),
              );
            },
            icon: SvgPicture.asset('assets/images/hamburger.svg'),
          ),
          IconButton(
            onPressed: () {
              HapticFeedback.lightImpact();
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) => const SettingsModal(),
              );
            },
            icon: SvgPicture.asset('assets/images/settings.svg'),
          )
        ],
        backgroundColor: globalBackgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              child: AnimationLimiter(
                child: ListView.builder(
                  itemCount: soundList.length,
                  itemBuilder: (BuildContext cxt, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: Duration(milliseconds: index * 150),
                      child: ScaleAnimation(
                        child: FadeInUp(
                          child: SoundItem(
                            index: index,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const PlayButton(),
    );
  }
}
