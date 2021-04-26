import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
      animation: AppController.instance,
    );
  }
}
