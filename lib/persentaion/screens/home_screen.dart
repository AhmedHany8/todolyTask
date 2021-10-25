// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoly/persentaion/screens/all_tasks_screen.dart';
import 'package:todoly/persentaion/screens/done_screen.dart';
import 'package:todoly/persentaion/screens/to_do_screen.dart';
import '../../data/lists.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    for (var i in tasks) {
      todo.add(i);
    }

    //tasks.map((e) => todo.add(e));
    super.initState();
  }

int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AllTasks(),
    ToDoScreen(),
    DoneScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_rounded),
            label: 'All Tasks',
            activeIcon: Icon(Icons.app_registration_rounded,
              size: 26,
              color: Colors.lime[300],
          ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_notifications_outlined,),
            label: 'To Do',
            activeIcon: Icon(Icons.edit_notifications_outlined,
              size: 26,
              color: Colors.red[900],
            ),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_outlined,),
            label: 'Done',
            activeIcon: Icon(Icons.task_alt_outlined,
              size: 26,
              color: Colors.green[600],
          ),
        ),
        ],
        currentIndex: _selectedIndex,
        
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}




