import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View/homescreen.dart';

void main() async {
  runApp(DogWalksApp());
}

class DogWalksApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Dog Walks",
      theme: ThemeData(accentColor: Colors.redAccent),
    );
  }
}
