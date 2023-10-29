import 'package:flutter/material.dart';

Widget Buttons({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttonColor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(
      buttonText,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
