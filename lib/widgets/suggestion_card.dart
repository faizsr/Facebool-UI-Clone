import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestAvatar;
  final String suggestName;
  final String mutualFriend;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard({
    required this.suggestAvatar,
    required this.suggestName,
    required this.mutualFriend,
    required this.addFriend,
    required this.removeFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Center(
                child: Text(suggestName),
              ),
              subtitle: Center(
                child: Text(mutualFriend),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonText: 'Add Friend',
                  ),
                  outlinedButton(
                    buttonAction: removeFriend,
                    buttonTextColor: Colors.black54,
                    buttonText: 'Remove',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget outlinedButton({
    required void Function() buttonAction,
    required Color buttonTextColor,
    required String buttonText,
  }) {
    return OutlinedButton(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Image.asset(
          suggestAvatar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
