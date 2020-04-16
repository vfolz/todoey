import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  // checkBoxState: (bool newValue) {
//   setState(() {
//     isChecked = newValue;
//   });
// }

  List<Task> task = [
    Task(name: 'Get toilet paper')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: <Widget>[
        
    
      ],
    );
  }
}