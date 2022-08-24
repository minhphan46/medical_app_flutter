import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  String imageDoctorPath = "";
  double rating = 0.0;
  String doctorName = "";
  String doctorTitle = "";

  DoctorCard({
    required this.doctorName,
    required this.doctorTitle,
    required this.rating,
    required this.imageDoctorPath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Stack(
            children: [
              // picture of doctor
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.deepPurple[100],
                    backgroundImage: AssetImage(imageDoctorPath),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              // rating out of 5
              Positioned(
                bottom: 0,
                left: 22,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow[100],
                        radius: 9,
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 17,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('${rating}'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // doctor name
          Text(
            doctorName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // doctor title
          Text(
            doctorTitle,
          ),
        ],
      ),
    );
  }
}
