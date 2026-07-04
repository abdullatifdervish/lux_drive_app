import 'package:flutter/material.dart';
import 'package:lux_drive/widgets/brand_item.dart';
import 'package:lux_drive/widgets/car_card.dart';
import 'package:lux_drive/widgets/menu_button.dart';
import 'package:lux_drive/widgets/text_field.dart';
import 'package:lux_drive/widgets/transmission_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Color(0xFF0C1120),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.only(top: 70, left: 18, right: 20),
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location", style: TextStyle(color: Colors.white60)),
                    Text(
                      "İstanbul, Fatih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              MenuButton(),
            ],
          ),
          SizedBox(height: 34),
          Text(
            "Explore new __________\ndestinations with ease!",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          SizedBox(height: 20),
          CustomTextField(),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Browse by Brands",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_rounded, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          BrandItem(),
          SizedBox(height: 30),
          Text(
            "Select by transmission",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 15),
          TransmissionItem(),
          SizedBox(height: 15),
          CarCard(),
        ],
      ),
    );
  }
}
