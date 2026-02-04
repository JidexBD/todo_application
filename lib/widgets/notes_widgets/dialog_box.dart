import 'package:flutter/material.dart';
import 'package:todo_application/widgets/notes_widgets/note_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.titleController,
    required this.contentController,
    required this.onCancel,
    required this.onSave,
  });

  final titleController;
  final contentController;

  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[850],
      content: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: " add note title",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(62, 255, 255, 255),
                ),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              maxLines: 5,
              controller: contentController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: " add note content",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(75, 255, 255, 255),
                ),
                labelStyle: TextStyle(color: Colors.white),
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
