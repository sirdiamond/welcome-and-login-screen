import 'package:flutter/material.dart';
import 'package:welcome/screens/welcome/welcome.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Welcome/Login UI",
      home: WelcomeScreen(),
    );
  }
}
