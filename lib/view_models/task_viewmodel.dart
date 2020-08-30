import 'package:flutter/material.dart';
import 'package:todo1y/models/repository/task_repository.dart';

class TaskViewModel extends ChangeNotifier{
  final TaskRepository _taskRepository;
  TaskViewModel({repository}):_taskRepository=repository;


}