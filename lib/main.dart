import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_divakar/models/task_data.dart';
import 'package:todo_divakar/screen/home_screen.dart';
import 'package:todo_divakar/screen/login_screen.dart';
import 'package:todo_divakar/screen/register_screen.dart';
import 'package:todo_divakar/screen/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          TaskScreen.id: (context) => TaskScreen(),
        },
        home: TaskScreen(),
      ),
    );
  }
}
