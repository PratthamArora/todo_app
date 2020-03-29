import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (checkboxState) {
//            setState(() {
//              Provider.of<TaskData>(context).task[index].toggleDone();
//            });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
