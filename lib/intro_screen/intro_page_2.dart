import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

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
              'A Tutor You Get Along With',
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
              'https://assets1.lottiefiles.com/packages/lf20_2cghrrpi.json',
            ),
          ),
        ],
      ),
    );
  }
}
