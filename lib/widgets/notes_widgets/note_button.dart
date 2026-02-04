import 'package:flutter/material.dart';

class NoteButton extends StatelessWidget {
  NoteButton({super.key, required this.text, required this.onPressed});

  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(text),
    );
  }
}
