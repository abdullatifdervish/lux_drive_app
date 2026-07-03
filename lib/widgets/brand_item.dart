import 'package:flutter/material.dart';
import 'package:lux_drive/models/brand_model.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<BrandModel> brand = [
    BrandModel(image: "images/tesla.png", title: "Tesla"),
    BrandModel(image: "images/bmw.png", title: "BMW"),
    BrandModel(image: "images/mercedes.png", title: "Mercedes"),
  ];
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(brand.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Container(
                    height: 104,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withValues(alpha: 0.08),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          brand[index].image,
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5),
                        Text(
                          brand[index].title,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          );
  }
}