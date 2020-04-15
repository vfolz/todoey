import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({this.text});

  final text;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  void checkBoxState(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }
  //Variable to be passed to stateless widget
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(widget.text, style: TextStyle(fontSize: 18.0, decoration: isChecked ? TextDecoration.lineThrough: null)),
        trailing: TextCheckBox(
            isChecked: isChecked,
            //Anonymous funciton call back
            checkBoxState: (bool newValue) {
              setState(() {
                isChecked = newValue;
              });
            }));
  }
}

class TextCheckBox extends StatelessWidget {
  TextCheckBox({this.isChecked, this.checkBoxState});

  final isChecked;
  final Function checkBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked, onChanged: this.checkBoxState);
  }
}
