import 'package:flutter/material.dart';
import 'package:flutter_training/app_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  int counter = 0;
  bool isDartTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDartTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
