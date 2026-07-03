import 'package:flutter/material.dart';

class TransmissionItem extends StatefulWidget {
  const TransmissionItem({super.key});

  @override
  State<TransmissionItem> createState() => _TransmissionItemState();
}

class _TransmissionItemState extends State<TransmissionItem> {
  List transmission = ["Automatic", "Electric", "Manual", "CVT"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(transmission.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(59),
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: Container(
                height: 40,
                width: 106,
                decoration: BoxDecoration(
                  color: selectedindex == index ? Color(0xFF314FF6) : null,
                  borderRadius: BorderRadius.circular(59),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.08),
                  ),
                ),
                child: Center(
                  child: Text(
                    transmission[index],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
