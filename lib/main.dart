import 'dart:io';

import 'package:DogWalk/Helper/Storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/Dog.dart';
import 'View/adddogscreen.dart';
import 'View/homescreen.dart';

void main() async {
  runApp(DogWalksApp());
}

class DogWalksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: StorageManager.manager.dogs(),
        builder: (context, snapshot) {
          Widget widget = Container();

          if (snapshot.hasData) {
            List<Dog> dogs = snapshot.data;
            if (Platform.isIOS) {
              widget = CupertinoApp(
                home: dogs.length > 0 ? HomeScreen(dogs) : AddDogScreen(),
                title: "Dog Walks",
              );
            } else {
              widget = MaterialApp(
                home: dogs.length > 0 ? HomeScreen(dogs) : AddDogScreen(),
                title: "Dog Walks",
              );
            }
          } else if (snapshot.hasError) {
            widget = MaterialApp(
                home: Container(child: Text("Error")), title: "Dog Walks");
          }

          return widget;
        });
  }
}
