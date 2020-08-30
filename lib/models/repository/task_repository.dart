

import 'package:todo1y/models/db/dao.dart';

class TaskRepository{

  //DI
  final TasksDao _dao;
  TaskRepository({dao}):_dao = dao;
}