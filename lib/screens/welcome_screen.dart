import 'package:flutter/material.dart';
import 'package:lux_drive/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /* double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width; */
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          width: 82,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFF314FF6)),
          ),
          child: Center(
            child: Text(
              "LuxDrive",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/welcome.jpg"),
            fit: BoxFit.cover, // Resmi her ekrana responsive şekilde esnetir
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("Elevate your drive \nwith elegance.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),),
                SizedBox(height: 15,),
                Text("Discover a world of premium vehicles at your\nfingertips. Unleash the thrill of driving in style. Your\njourney begins here.", style: TextStyle(
                  color: Colors.white54
                ),),
                SizedBox(height: 480,),
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                    child: Text("Let's Go"),
                  ),
                  onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=> HomeScreen()));
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


