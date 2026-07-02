import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xFF0A0F1D),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.only(top: 70, left: 30),
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.location_on_outlined, color: Colors.white,),
                ))
            ],
          )
        ],
      ),
    );
  }
}
