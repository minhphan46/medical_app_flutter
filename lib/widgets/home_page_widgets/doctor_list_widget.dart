import 'package:flutter/material.dart';
import 'package:on_boarding/widgets/home_page_widgets/doctor_card_widget.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      //color: Colors.amber,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DoctorCard(
            doctorName: 'Dr. Arlene McCoy',
            doctorTitle: 'Therapist, 7 y.e.',
            rating: 4.9,
            imageDoctorPath: 'assets/images/doctor1.jpg',
          ),
          DoctorCard(
            doctorName: 'Dr. Albert Flores',
            doctorTitle: 'Surgeon, 5 y.e.',
            rating: 4.8,
            imageDoctorPath: 'assets/images/doctor2.jpg',
          ),
          DoctorCard(
            doctorName: 'Dr. Steve Jobs',
            doctorTitle: 'Surgeon, 6 y.e.',
            rating: 5.0,
            imageDoctorPath: 'assets/images/doctor3.jpg',
          ),
        ],
      ),
    );
  }
}
