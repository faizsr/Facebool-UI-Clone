import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  final double? circleWidth;

  CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
    this.circleWidth,
  }) {
    IconButton(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: Colors.black,
        size: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleWidth,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}
