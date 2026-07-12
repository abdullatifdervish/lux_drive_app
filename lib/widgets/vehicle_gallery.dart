import 'package:flutter/material.dart';

class VehicleGallery extends StatelessWidget {
  final List<String> galleryImages;
  final PageController pageController;
  final int currentIndex;
  final Function(int) onPageChanged;
  const VehicleGallery({
    super.key,
    required this.galleryImages,
    required this.pageController,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: PageView.builder(
        controller: pageController,
        itemCount: galleryImages.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(galleryImages[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
