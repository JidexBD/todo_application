import 'package:flutter/material.dart';
import 'package:todo_application/widgets/notes_widgets/note_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.contoller,
    required this.onCancel,
    required this.onSave,
  });

  final contoller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black87,
      content: Container(
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: contoller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: " add note title",
              ),
            ),
            TextField(
              controller: contoller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: " add note content",
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NoteButton(text: 'Save', onPressed: onSave),
                SizedBox(width: 10),
                NoteButton(text: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
