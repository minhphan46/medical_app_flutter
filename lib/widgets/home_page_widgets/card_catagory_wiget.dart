import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  String imagePath = "";
  String nameCategory = "";
  CardCategory({
    Key? key,
    required this.imagePath,
    required this.nameCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).accentColor,
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 40,
            ),
            SizedBox(width: 10),
            Text(
              nameCategory,
              //style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
