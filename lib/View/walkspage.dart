import 'package:DogWalk/Component/ProfileHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WalksPage extends StatefulWidget {
  @override
  _WalksPageState createState() => _WalksPageState();
}

class _WalksPageState extends State<WalksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileHeaderStatic(),
          Expanded(
              flex: 1,
              child: Lottie.asset(
                  'animations/9711-payment-from-illustration-animation.json',
                  frameRate: FrameRate(50)))
        ],
      ),
    );
  }
}
