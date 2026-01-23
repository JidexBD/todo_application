import 'package:flutter/material.dart';
import 'package:todo_application/pages/notes_page.dart';
import 'package:todo_application/pages/settings_page.dart';
import 'package:todo_application/pages/todo_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black45,
          brightness: Brightness.dark,
        ),
      ),
      home: TodoPage(),
      routes: {
        '/TodoPage': (context) => TodoPage(),
        '/NotesPage': (context) => NotesPage(),
        '/SettingsPage': (context) => SettingsPage(),
      },
    );
  }
}
