import 'package:flutter/material.dart';
import 'package:on_boarding/widgets/home_page_widgets/card_catagory_wiget.dart';

class ListCategory extends StatelessWidget {
  ListCategory({Key? key}) : super(key: key);
  List<Map<String, String>> catergory = [
    {'catergory': 'Dentist', 'path': 'assets/icons/tooth.png'},
    {'catergory': 'Surgeon', 'path': 'assets/icons/knife.png'},
    {'catergory': 'Pharmacist', 'path': 'assets/icons/lungs.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      //color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardCategory(
            imagePath: catergory[index]['path']!,
            nameCategory: catergory[index]['catergory']!,
          );
        },
        itemCount: catergory.length,
      ),
    );
  }
}
