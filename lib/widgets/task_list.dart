import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Buy chips', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkBoxCallback: (checkboxState) {
            setState(() {
              task[index].toggleDone();
            });
          },
        );
      },
      itemCount: task.length,
    );
  }
}
