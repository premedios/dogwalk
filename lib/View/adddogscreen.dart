import 'package:DogWalk/Component/ProfileHeader.dart';
import 'package:flutter/material.dart';

class AddDogScreen extends StatefulWidget {
  @override
  _AddDogScreenState createState() => _AddDogScreenState();
}

class _AddDogScreenState extends State<AddDogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: ProfileHeaderStatic());
  }
}
