import 'package:flutter/material.dart';
import 'package:todo1y/style.dart';
import 'package:todo1y/util/constants.dart';

class AddTaskScreen extends StatelessWidget {
  final EditType editType;
  AddTaskScreen({this.editType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task",style: AppBarTextStyle),
      ),
      body: Text("AddTask"),
    );
  }
}
