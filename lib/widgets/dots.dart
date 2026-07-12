import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  final List<String> galleryImages;
  final int currentIndex;
  const Dots({
    super.key,
    required this.galleryImages,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(galleryImages.length, (index) {
        final isSelected = currentIndex == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: isSelected ? 24 : 8,
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.white
                : Colors.white.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}
