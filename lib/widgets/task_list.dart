import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> task;

  TaskList({this.task});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          checkBoxCallback: (checkboxState) {
            setState(() {
              widget.task[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
