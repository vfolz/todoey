import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function onChanged;
  final Function deleteTask;
  TaskTile({this.text, this.isChecked, this.onChanged, @required this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(text),   
      onDismissed: (direction) { deleteTask(); },
      child: ListTile(
         onLongPress: deleteTask,
          leading: Text(text,
              style: TextStyle(
                  fontSize: 18.0,
                  decoration: isChecked ? TextDecoration.lineThrough : null)),
          trailing: Checkbox(
            value: isChecked,
            onChanged: onChanged,
            activeColor: Colors.lightBlueAccent,
          )),
    );
  }
}