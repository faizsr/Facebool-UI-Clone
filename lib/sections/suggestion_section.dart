import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: const Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {
                debugPrint('More button clicked');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  suggestAvatar: contentNine,
                  suggestName: 'iamstrell',
                  mutualFriend: '10 mutual friends',
                  addFriend: () {
                    debugPrint('Add new friend');
                  },
                  removeFriend: () {
                    debugPrint('Remove friend');
                  },
                ),
                SuggestionCard(
                  suggestAvatar: contentFour,
                  suggestName: 'callmeshazzam',
                  mutualFriend: '6 mutual friends',
                  addFriend: () {
                    debugPrint('Add new friend');
                  },
                  removeFriend: () {
                    debugPrint('Remove friend');
                  },
                ),
                SuggestionCard(
                  suggestAvatar: contentFive,
                  suggestName: 'hagerty',
                  mutualFriend: '2 mutual friends',
                  addFriend: () {
                    debugPrint('Add new friend');
                  },
                  removeFriend: () {
                    debugPrint('Remove friend');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
