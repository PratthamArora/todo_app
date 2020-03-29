import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoapp/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];

  int get taskCount {
    return _task.length;
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_task);

  void addTask(String newTaskTitle) {
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
