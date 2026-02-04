import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
    required this.noteTitle,
    required this.noteContent,
    required this.deleteFunc,
  });
  // variables
  final String noteTitle;
  final String noteContent;
  final Function(BuildContext)? deleteFunc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 25),

      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunc,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade400,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // note tilte
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                child: Text(noteTitle, style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),
              // note content
              Text(noteContent),
            ],
          ),
        ),
      ),
    );
  }
}
