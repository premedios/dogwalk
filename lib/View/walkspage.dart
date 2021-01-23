import 'package:DogWalk/Component/CustomExpanded.dart';
import 'package:DogWalk/Component/ProfileHeader.dart';
import 'package:flutter/material.dart';

class WalksPage extends StatefulWidget {
  @override
  _WalksPageState createState() => _WalksPageState();
}

class _WalksPageState extends State<WalksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ProfileHeaderStatic(), CustomExpanded()],
      ),
    );
  }
}
