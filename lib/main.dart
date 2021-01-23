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
        theme: ThemeData(
            bottomAppBarTheme: BottomAppBarTheme(color: Colors.red[900])),
      );
    }
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    WalksPage(),
    EditProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Walks", icon: Icon(Icons.directions_walk)),
          BottomNavigationBarItem(label: "Edit Profile", icon: Icon(Icons.edit))
        ],
        onTap: onTabTapped,
        selectedItemColor: Colors.red[900],
        currentIndex: _currentIndex,
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
