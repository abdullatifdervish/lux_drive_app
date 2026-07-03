import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white60),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, size: 28, color: Colors.white),
                    ),
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      height: 30,
                      width: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(25),
                        child: Image.asset(
                          "images/person.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 7),
                  ],
                ),
              );
  }
}