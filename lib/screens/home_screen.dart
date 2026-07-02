import 'package:flutter/material.dart';
import 'package:lux_drive/models/brand_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BrandModel> brand = [
    BrandModel(image: "images/tesla.png", title: "Tesla"),
    BrandModel(image: "images/bmw.png", title: "BMW"),
    BrandModel(image: "images/mercedes.png", title: "Mercedes"),
    BrandModel(image: "images/mercedes.png", title: "Mercedes"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Color(0xFF0C1120),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.only(top: 70, left: 30, right: 20),
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
              Container(
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
              ),
            ],
          ),
          SizedBox(height: 34),
          Text(
            "Explore new __________\ndestinations with ease!",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Image.asset("images/search.png"),
                hintText: "Search your dream car...",
                hintStyle: TextStyle(color: Color(0xFF8C8BA7), fontSize: 17),
                fillColor: Colors.white.withValues(alpha: 0.08),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.08),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.08),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 34),
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
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(brand.length, (index) {
                return  Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 104,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withValues(alpha: 0.08),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(brand[index].image,height: 40, width: 40, fit: BoxFit.cover,),
                          SizedBox(height: 5,),
                          Text(brand[index].title, style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                );
              },)
            ),
          ),
        ],
      ),
    );
  }
}
