import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/sections/header_button_section.dart';
import 'package:facebook_ui_clone/sections/room_section.dart';
import 'package:facebook_ui_clone/sections/status_sections.dart';
import 'package:facebook_ui_clone/sections/story_section.dart';
import 'package:facebook_ui_clone/sections/suggestion_section.dart';
import 'package:facebook_ui_clone/widgets/buttons.dart';
import 'package:facebook_ui_clone/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_clone/widgets/circular_button.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    //ThinDivider
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey.shade300,
    );

    //ThickDivider
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey.shade300,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue[400],
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircularButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              debugPrint('Search screen appears');
            },
          ),
          CircularButton(
            buttonIcon: Icons.chat,
            buttonAction: () {
              debugPrint('Messenger screen appears');
            },
          )
        ],
      ),
      body: ListView(
        children: [
          const StatusSection(),
          thinDivider,
          SectionButton(
            buttonOne: Buttons(
              buttonText: 'Live',
              buttonIcon: Icons.video_call,
              buttonAction: () {
                debugPrint('Go live');
              },
              buttonColor: Colors.red,
            ),
            buttonTwo: Buttons(
              buttonText: 'Photo',
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                debugPrint('Take photo');
              },
              buttonColor: Colors.green,
            ),
            buttonThree: Buttons(
              buttonText: 'Room',
              buttonIcon: Icons.video_call,
              buttonAction: () {
                debugPrint('Record video');
              },
              buttonColor: Colors.purple,
            ),
          ),
          thickDivider,
          const RoomSection(),
          thickDivider,
          const StorySection(),
          thickDivider,
          PostCard(
            showBlueTick: true,
            avatar: personSeven,
            profileName: 'throtl',
            postTime: '5h',
            postTitle: 'Crazy transformation!!',
            postImage: contentSeven,
            likeCount: '10k',
            commentCount: '1k',
            shareCount: '10k',
          ),
          thickDivider,
          PostCard(
            showBlueTick: true,
            avatar: personEight,
            profileName: 'goonzquad',
            postTime: '10h',
            postTitle: '',
            postImage: contentEight,
            likeCount: '50k',
            commentCount: '5k',
            shareCount: '8k',
          ),
          thickDivider,
          const SuggestionSection(),
          thickDivider,
          PostCard(
            showBlueTick: true,
            avatar: personThree,
            profileName: 'dqsalman',
            postTime: '11h',
            postTitle: 'Day with porsche.',
            postImage: contentThree,
            likeCount: '150k',
            commentCount: '50k',
            shareCount: '20k',
          ),
        ],
      ),
    );
  }
}
