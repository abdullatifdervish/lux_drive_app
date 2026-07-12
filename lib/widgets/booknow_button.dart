import 'package:flutter/material.dart';

class BooknowButton extends StatelessWidget {
  const BooknowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: MaterialButton(
          color: Color(0xFF314FF6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 18),
            child: Text(
              "Book Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
