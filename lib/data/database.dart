import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['learn to make app', false],
      ['start Practice', false],
    ];
    updateDataBase();
  }

  void loadData() {
    toDoList = _myBox.get('ToDoList', defaultValue: []);
  }

  void updateDataBase() {
    _myBox.put('ToDoList', toDoList);
  }

  void add(List task) {
    toDoList.add(task);
  }

  void removeAt(int index) {
    toDoList.removeAt(index);
  }
}
