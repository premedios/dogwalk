import 'package:DogWalk/Component/EditProfileHeader.dart';
import 'package:DogWalk/Helper/Storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/Dog.dart';
import 'View/homescreen.dart';

void main() async {
  runApp(DogWalksApp2());
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

class DogWalksApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: StorageManager.manager.dogs(),
        builder: (context, snapshot) {
          Widget widget;
          if (snapshot.hasData) {
            List<Dog> dogs = snapshot.data;
            widget = MaterialApp(
              home: dogs.length > 0 ? HomeScreen() : EditProfileHeader(),
              title: "Dog Walks",
            );
          } else if (snapshot.hasError) {
            widget = MaterialApp(
                home: Container(child: Text("Error")), title: "Dog Walks");
          }

          return widget;
        });
  }
}
