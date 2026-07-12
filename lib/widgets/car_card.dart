import 'package:flutter/material.dart';
import 'package:lux_drive/models/car_model.dart';
import 'package:lux_drive/screens/detail_screen.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<CarModel> carmodel = [
      CarModel(
        name: "Mercedes SL 63",
        pricePerDay: "2500 AED/day",
        horsepower: "585 hp",
        transmission: "Automatic",
        seats: "4",
        images: "images/home_mercedes.png",
        gallery: [
          "images/m_detail1.png",
          "images/m_detail2.png",
          "images/m_detail3.png",
          "images/m_detail4.png",
        ],
        description:
            "The Mercedes SL 63 AMG is a sports car created using advanced technologies that have made it incredibly fast and powerful.",
      ),
      CarModel(
        name: "Mercedes SL 63",
        pricePerDay: "2500 AED/day",
        horsepower: "585 hp",
        transmission: "Automatic",
        seats: "4",
        images: "images/home_mercedes.png",
        description:
            "The Mercedes SL 63 AMG is a sports car created using advanced technologies that have made it incredibly fast and powerful.",
      ),
    ];
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: carmodel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 4),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => DetailScreen(car: carmodel[index]),
                  ),
                );
              },
              child: Container(
                height: 270,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            carmodel[index].name,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Container(
                            height: 35,
                            width: 116,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(59),
                              border: Border.all(
                                color: Colors.white.withValues(alpha: 0.08),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                carmodel[index].pricePerDay,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("images/hp.png"),
                              SizedBox(width: 5),
                              Text(
                                carmodel[index].horsepower,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey[800],
                          ),
                          Row(
                            children: [
                              Image.asset("images/Vector.png"),
                              SizedBox(width: 5),
                              Text(
                                carmodel[index].transmission,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey[800],
                          ),
                          Row(
                            children: [
                              Image.asset("images/seat.png"),
                              SizedBox(width: 5),
                              Text(
                                "${carmodel[index].seats} Seats",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Image.asset(
                        carmodel[index].images,
                        height: 150,
                        width: 340,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
