
import 'package:flutter/material.dart';
import '../../data/lists.dart';

class ToDoScreen extends StatelessWidget {
  static const String routeName = "/todo";
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        
        return Text(todo[i].taskName);
      },
      itemCount: todo.length,
    );
  }
}
