import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class CustomExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return SafeArea(
        child: Expanded(
            flex: 1,
            child: Lottie.asset(
                'animations/9711-payment-from-illustration-animation.json',
                alignment: Alignment.center)),
      );
    } else {
      return Expanded(
          flex: 1,
          child: Lottie.asset(
              'animations/9711-payment-from-illustration-animation.json',
              alignment: Alignment.center));
    }
  }
}
