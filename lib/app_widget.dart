import 'package:flutter/material.dart';
import 'package:flutter_training/home.dart';
import 'package:flutter_training/login_page.dart';

import 'app_controller.dart';

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
          initialRoute: '/',
          routes: {
            '/': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
          },
        );
      },
      animation: AppController.instance,
    );
  }
}
