import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          );
  }
}