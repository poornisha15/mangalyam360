import 'dart:ffi';

class VendorsData {
  String Name;
  double price;
  String Count;
  final String imageURL;
  final double rating;

  VendorsData({
    required this.Name,
    required this.price,
    required this.Count,
    required this.imageURL,
    required this.rating,
  });
}