import 'package:flutter/material.dart';
import '../../data/lists.dart';

class DoneScreen extends StatelessWidget {
  
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        
        return Text(done[i].taskName);
      },
      itemCount: done.length,
    );
  }
}
