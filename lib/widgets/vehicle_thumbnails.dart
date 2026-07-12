import 'package:flutter/material.dart';

class VehicleThumbnails extends StatelessWidget {
  final List<String> galleryImages;
  final PageController pageController;
  final int currentIndex;
  const VehicleThumbnails({super.key, required this.galleryImages, required this.pageController, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(galleryImages.length, (index) {
                  final isSelected = currentIndex == index;
                  return GestureDetector(
                    onTap: () {
                      // Küçük resme basınca büyük resmi o sayfaya kaydır
                      pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 75,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected ? Colors.white : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Opacity(
                          opacity: isSelected ? 1.0 : 0.5,
                          child: Image.asset(
                            galleryImages[index],
                            fit: BoxFit.cover,
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