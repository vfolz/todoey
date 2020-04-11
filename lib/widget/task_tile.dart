import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  TaskTile({this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(text, style: TextStyle(fontSize: 18.0)),
        trailing: Checkbox(
          value: false, 
          onChanged: null,
        )
    );
  }
}
