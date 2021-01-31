import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Model/Dog.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 200,
      color: CupertinoColors.activeBlue,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 42.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/dog-portrait.jpg"),
                  radius: 40.0,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 16),
            child: Center(
              child: Text(myDog.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0)),
            ),
          ),
        ],
      ),
    );
  }
}
