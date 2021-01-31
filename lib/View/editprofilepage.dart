import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Dog.dart';

class EditProfilePage extends StatefulWidget {
  final List<Dog> dogs;
  EditProfilePage(this.dogs);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: Container(
            color: Colors.red,
            width: double.infinity,
            height: 200.0,
            child: Center(
              child: Text("Sample Text"),
            ),
          ),
        ),
      ),
    );
  }
}
