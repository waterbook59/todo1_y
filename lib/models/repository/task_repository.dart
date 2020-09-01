

import 'package:todo1y/models/db/dao.dart';

class TaskRepository{
  TaskRepository({TasksDao dao}):_dao = dao;
  //DI
  final TasksDao _dao;

}