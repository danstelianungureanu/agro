// ignore_for_file: unused_field, camel_case_types

import 'package:hive_flutter/hive_flutter.dart';

class toDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');
//run this methode if this is the 1st time ever openning this app

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
    // update the database
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
