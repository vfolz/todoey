import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              deleteTask: (){
              taskData.delteTaks(index);
              } ,
              text: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onChanged: (bool newValue) {
                taskData.completeTask(index);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
