import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.book_rounded, color: Colors.white)),
          ListTile(
            leading: Icon(Icons.home_max_rounded),
            title: Text("TODO LIST"),
            iconColor: Colors.white,
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/TodoPage');
            },
          ),
          ListTile(
            leading: Icon(Icons.note_add_rounded),
            title: Text("N O T E S"),
            iconColor: Colors.white,
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/NotesPage');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_applications_rounded),
            title: Text("SETTINGS"),
            iconColor: Colors.white,
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/SettingsPage');
            },
          ),
        ],
      ),
    );
  }
}
