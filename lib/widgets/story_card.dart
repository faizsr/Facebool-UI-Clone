import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:facebook_ui_clone/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2,
            top: 2,
            child: createStoryStatus
                ? CircularButton(
                    circleWidth: 40,
                    iconColor: Colors.blue,
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      debugPrint('Create new story');
                    },
                  )
                : Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.only(top: 8),
                    child: Avatar(
                      avatarHeight: 60,
                      avatarWidth: 60,
                      displayBorder: displayBorder,
                      displayImage: avatar,
                      displayStatus: false,
                    ),
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 12,
            child: Text(
              labelText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
