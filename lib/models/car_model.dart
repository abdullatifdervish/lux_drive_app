class CarModel {
  final String name;
  final String pricePerDay;
  final String horsepower;
  final String transmission;
  final String seats;
  final String images;
  final List<String> gallery;

  CarModel(   {
    required this.name,
    required this.pricePerDay,
    required this.horsepower,
    required this.transmission,
    required this.seats,
    required this.images,
    this.gallery = const [],
  });
}
