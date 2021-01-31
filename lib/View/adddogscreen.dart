import 'package:DogWalk/Component/EditProfileHeader.dart';
import 'package:flutter/material.dart';

class AddDogScreen extends StatefulWidget {
  @override
  _AddDogScreenState createState() => _AddDogScreenState();
}

class _AddDogScreenState extends State<AddDogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Container(
                color: Colors.purple,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 42.0,
                            child: CircleAvatar(
                                backgroundImage: AssetImage("images/dog.png"),
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
                    "Let's start by providing some information about your dog!",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
