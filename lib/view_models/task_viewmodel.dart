import 'package:flutter/material.dart';
import 'package:todo1y/models/repository/task_repository.dart';

class TaskViewModel extends ChangeNotifier{
  TaskViewModel({TaskRepository repository}):_taskRepository=repository;
  final TaskRepository _taskRepository;



}