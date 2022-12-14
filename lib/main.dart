import 'package:flutter/material.dart';
import 'pages/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Color(0xffb388eb),
        accentColor: Colors.purple.shade50,
      ),
      home: OnBoardingScreen(),
    );
  }
}
