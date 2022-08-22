import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              'Let\'s Find You a Tutor..',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 300,
            child: Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_l5qvxwtf.json',
            ),
          ),
        ],
      ),
    );
  }
}
