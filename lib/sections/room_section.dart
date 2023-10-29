import 'package:facebook_ui_clone/assets.dart';
import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: personOne,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personTwo,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personThree,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personFour,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personFive,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personSix,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personSeven,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personEight,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personNine,
            displayStatus: true,
          ),
          Avatar(
            displayImage: personTen,
            displayStatus: true,
          ),
        ],
      ),
    );
  }
}

Widget createRoomButton() {
  return Container(
    padding: const EdgeInsets.only(
      top: 6,
      right: 6,
    ),
    child: OutlinedButton.icon(
      onPressed: () {
        debugPrint('Go to create room section ');
      },
      icon: const Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: const Text(
        'Create \n room',
        style: TextStyle(color: Colors.blue),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: Colors.blue.shade100,
            width: 2,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    ),
  );
}
