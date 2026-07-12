import 'package:flutter/material.dart';

class DetailCarInformation extends StatelessWidget {
  final String horsepower;
  final String transmission;
  const DetailCarInformation({super.key, required this.horsepower, required this.transmission});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset("images/hp.png", fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "Horsepower",
                        style: TextStyle(color: Color(0xFF8C8BA7)),
                      ),
                      Text(
                        horsepower,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "images/Vector.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "Transmission",
                        style: TextStyle(color: Color(0xFF8C8BA7)),
                      ),
                      Text(
                        transmission,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            );
  }
}