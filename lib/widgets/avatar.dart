import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double? avatarWidth;
  final double? avatarHeight;

  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.avatarWidth,
    this.avatarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 2.5,
                  )
                : const Border(),
          ),
          padding: const EdgeInsets.only(
            left: 6,
            right: 6,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: avatarWidth,
              height: avatarHeight,
              fit: BoxFit.cover,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
