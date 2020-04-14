import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  TaskTile({this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(text, style: TextStyle(fontSize: 18.0)),
        trailing: TextCheckBox()
    );
  }
}

class TextCheckBox extends StatefulWidget {
  const TextCheckBox({
    Key key,
  }) : super(key: key);

  @override
  _TextCheckBoxState createState() => _TextCheckBoxState();
}

class _TextCheckBoxState extends State<TextCheckBox> {
 bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked, 
      onChanged: (newValue){
        setState(() {
          isChecked = newValue;
        });
      }  
 
    );
  }
}
