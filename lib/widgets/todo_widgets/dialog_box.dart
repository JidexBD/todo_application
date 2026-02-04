import 'package:flutter/material.dart';
import 'package:todo_application/widgets/todo_widgets/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSaved,
  });
  final controller;

  final VoidCallback onSaved;
  final VoidCallback onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[850],
      contentTextStyle: TextStyle(color: Colors.white),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a task',
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSaved),
                SizedBox(width: 8),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
