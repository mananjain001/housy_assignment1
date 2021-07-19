import 'package:flutter/material.dart';
import 'package:housy_assignment1/ui/HomePage.dart';
import 'package:statusbarz/statusbarz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [Statusbarz.instance.observer],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
