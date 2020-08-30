import 'package:moor/moor.dart';
import 'package:todo1y/models/db/database.dart';

part 'dao.g.dart';

@UseDao(tables: [TaskRecords])
class TasksDao extends DatabaseAccessor<MyDatabase> with _$TasksDaoMixin{
  TasksDao(MyDatabase db) : super(db);

}