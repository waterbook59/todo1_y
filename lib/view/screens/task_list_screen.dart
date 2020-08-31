import 'package:flutter/material.dart';
import 'package:todo1y/util/constants.dart';

import '../../style.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task List",style: AppBarTextStyle,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            tooltip: "新たに追加",
            onPressed: () => _addTodo(context,EditType.add),
          ),
        ],
      ),
    );
  }

  _addTodo(BuildContext context, EditType add) {
    Navigator.push(context, MaterialPageRoute(builder: (_)=>AddTaskScreen(editType: EditType.add,)));
  }


}
