import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;

  CustomTextField({this.hint, this.label});

  @override
  _CustomTextFieldState createState() =>
      _CustomTextFieldState(hint: hint, label: label);
}

class _CustomTextFieldState extends State<CustomTextField> {
  final String hint;
  final String label;

  _CustomTextFieldState({this.hint, this.label});

  @override
  Widget build(BuildContext context) {
    Widget textField;

    if (Platform.isIOS) {
      textField = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                label.toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
          CupertinoTextField(
            clearButtonMode: OverlayVisibilityMode.editing,
            padding: EdgeInsets.all(16),
          ),
        ],
      );
    } else {
      textField = TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(labelText: hint),
      );
    }

    return textField;
  }
}
