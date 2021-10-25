// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../data/lists.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            tasks[i].taskName,
            style: tasks[i].isDone
                ? TextStyle(decoration: TextDecoration.lineThrough)
                : null,
          ),
          trailing: Checkbox(
            onChanged: (val) {
              setState(() {
                tasks[i].isDone = val!;
                if (tasks[i].isDone) {
                  done.add(
                    tasks[i],
                  );
                  todo.remove(
                    tasks[i],
                  );
                } else {
                  done.remove(
                    tasks[i],
                  );
                  todo.add(
                    tasks[i],
                  );
                }
              });
            },
            value: tasks[i].isDone,
          ),
        );
      }, // gina el maggnona ry :(
      itemCount: tasks.length,
    );
  }
}
