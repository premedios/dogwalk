import 'package:flutter/material.dart';

class EditProfileHeader extends StatefulWidget {
  @override
  _EditProfileHeaderState createState() => _EditProfileHeaderState();
}

class _EditProfileHeaderState extends State<EditProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/dog.png'),
      height: 200,
      width: 200,
    );
  }
}
