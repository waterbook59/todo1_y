import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo1y/models/db/database.dart';
import 'package:todo1y/models/repository/task_repository.dart';
import 'package:todo1y/view_models/task_viewmodel.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

List<SingleChildWidget> independentModels =[
  Provider<MyDatabase>(
    create: (_)=>MyDatabase(),
  ),
];


List dependentModels = [
  ProxyProvider<MyDatabase,WordsDao>(
    update: (_, db, dao)=>WordsDao(db),
  ),
  ProxyProvider<WordsDao,TaskRepository>(
    update: (_, dao, repository)=>TaskRepository(dao: dao),
  ),
];

//chapter98 RepositoryにChangeNotifierProxyProvider
List viewModels =[
  ChangeNotifierProvider<TaskViewModel>(
    create: (context)=> TaskViewModel(
      repository:Provider.of<TaskRepository>(context, listen: false),
    ),
  ),
];