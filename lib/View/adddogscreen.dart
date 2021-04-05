import 'dart:io';

import 'package:DogWalk/Component/CustomTextField.dart';
import 'package:DogWalk/Component/EditProfileHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddDogScreen extends StatefulWidget {
  @override
  _AddDogScreenState createState() => _AddDogScreenState();
}

class _AddDogScreenState extends State<AddDogScreen> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.transparent,
            trailing: GestureDetector(
              child: Text('Save', style: TextStyle(color: Colors.white)),
              onTap: () {
                print('tapped');
              },
            ),
            border: null,
          ),
          child: SingleChildScrollView(
              child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: Container(
                    color: Colors.purple,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Center(
                              child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 42.0,
                                  child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/dog.png"),
                                      radius: 40.0,
                                      child: MaterialButton(
                                        shape: CircleBorder(),
                                        height: 80,
                                        color: Colors.black.withAlpha(255 ~/ 4),
                                        child: Icon(
                                          Icons.camera_alt,
                                          size: 44,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      )))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Let's start by providing some information about your doggie!",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomTextField(hint: 'Name', label: 'Name'),
                ),
              ],
            ),
          )));
    } else {
      return Scaffold(
        body: Container(
          child: Text("Hello World"),
        ),
      );
    }
  }
}
