import 'package:DogWalk/View/editprofilepage.dart';
import 'package:DogWalk/View/walkspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() async {
  runApp(DogWalksApp());
}

class DogWalksApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        title: "Dog Walks",
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_walk), label: "Walks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.edit), label: "Edit Profile")
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return WalksPage();
                break;
              default:
                return EditProfilePage();
            }
          },
        ),
      );
    } else {
      return MaterialApp(
        home: HomeScreen(),
        title: "Dog Walks",
      );
    }
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WalksPage();
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     backgroundColor: Colors.green[800],
    //     middle: Text(
    //       "Walks",
    //       style: TextStyle(color: Colors.white, fontSize: 20.0),
    //     ),
    //     trailing: CupertinoButton(
    //       padding: EdgeInsets.zero,
    //       child: Icon(Icons.add, color: Colors.white),
    //       onPressed: () {
    //         print("pressed");
    //       },
    //     ),
    //   ),
    //   child: ListView.builder(
    //     padding: EdgeInsets.all(16),
    //     itemCount: 10,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //         margin: EdgeInsets.all(16),
    //         color: (index % 2 == 0 ? Colors.blue : Colors.red),
    //         height: 50,
    //         child: Center(child: Text("Walk Item")),
    //       );
    //     },
    //   ),
    // );
  }
}
