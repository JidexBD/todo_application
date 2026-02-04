import 'package:flutter/material.dart';
import 'package:todo_application/widgets/notes_widgets/note_tile.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List notesList = [
    [
      "Jide's notes On irregulars ",
      "a study on the irregulars of the tower and their  classification on how they entered ",
    ],
    ["Tower born children ", "A study on the tower born irregular childrens"],
  ];

  // newNote
  void createNewNote() {
    context: context,
    Builder: (context){
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text('NOTES', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: notesList.length,
        itemBuilder: (context, index) {
          return NoteTile(
            noteTitle: notesList[index][0],
            noteContent: notesList[index][1],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: createNewNote,
        child: Icon(Icons.add),
      ),
    );
  }
}
