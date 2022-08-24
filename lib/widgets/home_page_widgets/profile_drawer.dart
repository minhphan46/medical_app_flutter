import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileDrawer extends StatelessWidget {
  String name = "";
  ProfileDrawer({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple.shade50,
        child: ListView(
          children: [
            Container(
              //color: Colors.blue,
              height: 200,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.deepPurple[100],
                      backgroundImage: AssetImage('assets/images/gai_xinh.jpg'),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Software Engenieer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                leading: const Icon(Icons.info),
                title: const Text(
                  'About app',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
