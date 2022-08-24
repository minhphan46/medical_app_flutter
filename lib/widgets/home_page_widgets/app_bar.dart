import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  String? name = '';
  final String avatarImagePath;
  MyAppBar({
    Key? key,
    this.name,
    this.avatarImagePath = "assets/images/default_avatar.jpg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // name
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '${name}',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // profile picter
          GestureDetector(
            onTap: (() {
              //print("show profile");
              Scaffold.of(context).openEndDrawer();
            }),
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.deepPurple[100],
              backgroundImage: AssetImage(avatarImagePath),
            ),
          ),
        ],
      ),
    );
  }
}
