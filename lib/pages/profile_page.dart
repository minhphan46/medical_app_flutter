import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(
        //appBar: AppBar(title: Text("My Profile")),
        body: Center(
          child: Text('My Profile'),
        ),
      ),
    );
  }
}
