import 'package:flutter/material.dart';
import 'package:lux_drive/models/car_model.dart';

class DetailScreen extends StatefulWidget {
  final CarModel car;
  const DetailScreen({super.key, required this.car});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFF0C1120),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.2),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.2),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info_outline_rounded),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 260,
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.car.gallery.length,
                onPageChanged: (index) {
                  // Kaydırıldığında alttaki seçili indeksi güncelle
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.car.gallery[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(widget.car.gallery.length, (index) {
                  final isSelected = currentIndex == index;
                  return GestureDetector(
                    onTap: () {
                      // Küçük resme basınca büyük resmi o sayfaya kaydır
                      _pageController.animateToPage(
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
                        // Seçili olan küçük resmin etrafına border ekleyebilirsin
                        border: Border.all(
                          color: isSelected ? Colors.white : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Opacity(
                          // Seçili olmayanı biraz soluk yaparak odağı seçiliye çekebilirsin
                          opacity: isSelected ? 1.0 : 0.5,
                          child: Image.asset(widget.car.gallery[index], fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            /*  SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.car.gallery.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, top: 2, right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.car.gallery[index],
                          height: 70,
                          width: 77,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
