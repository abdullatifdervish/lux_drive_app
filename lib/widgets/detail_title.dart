import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final String name;
  final String pricePerDay;
  const DetailTitle({super.key, required this.name, required this.pricePerDay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        children: [
          Text(name, style: TextStyle(color: Colors.white, fontSize: 25)),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(59),
              border: Border.all(color: Color(0xFF314FF6)),
            ),
            width: 123,
            height: 35,
            child: Center(
              child: Text(
                pricePerDay,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
