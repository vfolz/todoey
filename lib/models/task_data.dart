import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData with ChangeNotifier {
 List<Task> tasks = [Task(name: 'Get toilet paper'),
 Task(name: 'Get more toilet paper')
 ];

 void addTask(Task newTask){
   tasks.add(newTask);
   notifyListeners();
 }

 void completeTask(int taskIndex){
   tasks[taskIndex].toggleDone();
   notifyListeners();
 }

 void delteTaks(int taskIndex){
   tasks.removeAt(taskIndex);
   notifyListeners();
 }

}