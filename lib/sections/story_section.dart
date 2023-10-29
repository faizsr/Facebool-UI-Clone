import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: personOne,
            story: contentOne,
            createStoryStatus: true,
          ),
          StoryCard(
            displayBorder: true,
            labelText: "rocarstv",
            avatar: personTwo,
            story: contentTwo,
            createStoryStatus: false,
          ),
          StoryCard(
            displayBorder: true,
            labelText: "dqsalman",
            avatar: personThree,
            story: contentThree,
            createStoryStatus: false,
          ),
          StoryCard(
            displayBorder: true,
            labelText: "callmeshazzam",
            avatar: personFour,
            story: contentFour,
            createStoryStatus: false,
          ),
          StoryCard(
            displayBorder: true,
            labelText: "hagerty",
            avatar: personFive,
            story: contentFive,
            createStoryStatus: false,
          ),
          StoryCard(
            displayBorder: true,
            labelText: "tjhunt",
            avatar: personSix,
            story: contentSix,
            createStoryStatus: false,
          ),
        ],
      ),
    );
  }
}
