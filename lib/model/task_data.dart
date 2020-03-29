import 'package:flutter/foundation.dart';
import 'package:todoapp/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [];

  int get taskCount {
    return task.length;
  }
}
