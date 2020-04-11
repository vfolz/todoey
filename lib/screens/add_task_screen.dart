import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
         padding: const EdgeInsets.only(top:10.0,right: 50.0, left:50.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Add Task",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                )),
            Padding(
              padding: const EdgeInsets.only(bottom:5.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom:-20.0, ),                
                ) ,
              ),
            ),
          
            SizedBox(
              width: 300.0,
                          child: FlatButton(
                
                color: Colors.lightBlueAccent,
                disabledColor: Colors.lightBlueAccent,
                onPressed: null,
                child:Text('Add',style: TextStyle(color: Colors.white),),



              ),
            ),
         
          ],
        ),
      ),
    );
  }
}