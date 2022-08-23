import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CardStarted extends StatelessWidget {
  const CardStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // animation or cute picture
            Container(
              height: 150,
              width: 150,
              //color: Colors.deepPurple[200],
              child: Lottie.network(
                  "https://assets1.lottiefiles.com/packages/lf20_fi4czmr1.json"),
            ),
            SizedBox(width: 20),
            // how do you feed + get started button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How do you feel?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  const Text(
                    'Fill out your medical card right now',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 12),
                  // started buttom
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(12), // radius cho widget
                      color: Color(0xff8A86E2),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          print('you tap get started');
                        },
                        borderRadius:
                            BorderRadius.circular(12), // radius cho hieu ung
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
