import 'package:flutter/material.dart';
import 'package:lux_drive/models/car_model.dart';
import 'package:lux_drive/widgets/booknow_button.dart';
import 'package:lux_drive/widgets/detail_car_information.dart';
import 'package:lux_drive/widgets/detail_title.dart';
import 'package:lux_drive/widgets/dots.dart';
import 'package:lux_drive/widgets/vehicle_gallery.dart';
import 'package:lux_drive/widgets/vehicle_thumbnails.dart';

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
        padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            VehicleGallery(
              galleryImages: widget.car.gallery,
              pageController: _pageController,
              currentIndex: currentIndex,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            SizedBox(height: 10),
            VehicleThumbnails(
              galleryImages: widget.car.gallery,
              pageController: _pageController,
              currentIndex: currentIndex,
            ),
            SizedBox(height: 10),
            // Noktaların (Indicator) Gösterileceği Alan
            Dots(galleryImages: widget.car.gallery, currentIndex: currentIndex),
            DetailTitle(
              name: widget.car.name,
              pricePerDay: widget.car.pricePerDay,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 18, right: 18),
              child: Text(
                widget.car.description,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(color: Colors.grey[800]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Specifications",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            DetailCarInformation(
              horsepower: widget.car.horsepower,
              transmission:widget.car.transmission,
            ),
            Spacer(),
            BooknowButton(),
          ],
        ),
      ),
    );
  }
}
