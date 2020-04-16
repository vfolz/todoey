import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [Task(name: 'Get toilet paper')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        text: task[index].name,
        isChecked: task[index].isDone,
        onChanged: (bool newValue) {
          setState(() {
            task[index].toggleDone();
          });
        },
      
      );
    }, itemCount: task.length,);
  }
}
