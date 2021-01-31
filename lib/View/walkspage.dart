import 'package:DogWalk/Component/ProfileHeader.dart';
import 'package:DogWalk/Model/Dog.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WalksPage extends StatefulWidget {
  final List<Dog> dogs;
  WalksPage(this.dogs);

  @override
  _WalksPageState createState() => _WalksPageState();
}

class _WalksPageState extends State<WalksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileHeader(),
          Expanded(
              flex: 1,
              child: SafeArea(
                child: Lottie.asset(
                    'animations/9711-payment-from-illustration-animation.json',
                    alignment: Alignment.center),
              ))
        ],
      ),
    );
  }
}
