import 'package:flutter/material.dart';
import 'package:on_boarding/widgets/home_page_widgets/doctor_card_widget.dart';
import 'widgets/home_page_widgets/list_category_widget.dart';
import 'widgets/home_page_widgets/search_bar.dart';
import 'widgets/home_page_widgets/card_get_starts_widget.dart';
import 'widgets/home_page_widgets/app_bar.dart';
import 'widgets/home_page_widgets/doctor_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFEFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // appBar
              MyAppBar(name: 'Minh Phan'),
              const SizedBox(height: 25),
              // card -> How do you feel?
              const CardStarted(),
              const SizedBox(height: 25),
              // search bar
              SearchBar(),
              const SizedBox(height: 25),
              // horizontal listview -> categories: dentist, surgeon ect...
              ListCategory(),
              const SizedBox(height: 15),
              // Text Doctor List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Doctor list',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // doctor List
              DoctorList(),
              // bottom bar
            ],
          ),
        ),
      ),
    );
  }
}
