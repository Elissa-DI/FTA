// ignore_for_file: sort_child_properties_last, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskCompleted,
               onChanged: onChanged,
               activeColor: Colors.black,
            ),
            //Task name
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                  ?  TextDecoration.lineThrough
                  :  TextDecoration.none
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
