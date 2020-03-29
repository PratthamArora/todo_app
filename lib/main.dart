import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/views/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
      create: (context) => TaskData(),
    );
  }
}
