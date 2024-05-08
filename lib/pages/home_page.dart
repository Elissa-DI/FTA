// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:first01/utils/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List todoList = [
  //   {"make tutorial", false},
  //   {"Do exercise", false},
  // ];

  List<Map<String, dynamic>> todoList = [
    {"taskName": "make tutorial", "taskCompleted": false},
    {"taskName": "Do exercise", "taskCompleted": false},
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      // todoList[index][0] = !todoList[index][1];
      todoList[index]["taskCompleted"] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            // taskName: todoList[index][0],
            // taskCompleted: todoList[index][1],
            taskName: todoList[index]["taskName"],
            taskCompleted: todoList[index]["taskCompleted"],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
