import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function onChanged;
  TaskTile({this.text, this.isChecked, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(text,
            style: TextStyle(
                fontSize: 18.0,
                decoration: isChecked ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: Colors.lightBlueAccent,
        ));
  }
}
// checkBoxState: (bool newValue) {
//   setState(() {
//     isChecked = newValue;
//   });
// }

// void checkBoxState(bool newValue) {
//   setState(() {
//     isChecked = newValue;
//   });
// }