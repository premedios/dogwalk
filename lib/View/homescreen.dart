import 'package:DogWalk/Model/Dog.dart';
import 'package:DogWalk/View/walkspage.dart';
import 'package:flutter/material.dart';

import 'editprofilepage.dart';

class HomeScreen extends StatefulWidget {
  final List<Dog> dogs;
  const HomeScreen(this.dogs);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> _children;

  void initState() {
    _children = [
      WalksPage(widget.dogs),
      EditProfilePage(widget.dogs),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Walks", icon: Icon(Icons.directions_walk)),
          BottomNavigationBarItem(
              label: "Edit Profile!", icon: Icon(Icons.edit))
        ],
        onTap: onTabTapped,
        selectedItemColor: Colors.red[900],
        selectedLabelStyle: TextStyle(color: Colors.red[900]),
        selectedIconTheme: IconThemeData(color: Colors.red[900]),
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
