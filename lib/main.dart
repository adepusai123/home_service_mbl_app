import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home Service',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SafeArea(
          child: Scaffold(
            body: WelcomeScreen(),
          ),
        ));
  }
}
