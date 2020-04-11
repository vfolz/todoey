import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: <Widget>[
        TaskTile(text: "Buy milk"),
        TaskTile(text: "Buy milk"),
      ],
    );
  }
}