class Service {
  final int id;
  final String Name;
  final int price;
  final String imageURL;
  final double rating;
Service(
      {
        required this.id,
        required this.Name,
        required this.imageURL,
        required this.price,
        required this.rating,
        });
        static List<Service> ServiceList = [
   Service(
        id: 0,
        Name: 'Pink Parrots',
        imageURL: 'asset/stagedec1.jpg',
        rating: 4.8,
        price: 40000
),
Service(
        id: 1,
        Name: 'Wedding mela',
        imageURL: 'asset/stagedec2.jpg',
        rating: 4.8,
        price: 180000
),
Service(
        id: 2,
        Name: 'Petals & Drapes',
        imageURL: 'asset/stagedec3.jpg',
        rating: 4.8,
        price: 75000
),
Service(
        id: 3,
        Name: 'Lk Decors',
        imageURL: 'asset/stagedec4.jpg',
        rating: 4.8,
        price: 50000
),
Service(
        id: 4,
        Name: 'Grace Decors',
        imageURL: 'asset/stagedec5.jpg',
        rating: 4.8,
        price: 30000
),];}
class Service1 {
  final int id;
  final String Name;
  final int price;
  final String imageURL;
  final double rating;
Service1(
      {
        required this.id,
        required this.Name,
        required this.imageURL,
        required this.price,
        required this.rating,
        });
        static List<Service1> ServiceList1 = [
   Service1(
        id: 0,
        Name: 'Classic Shots',
        imageURL: 'asset/photography1.jpg',
        rating: 4.8,
        price: 80000
),
Service1(
        id: 1,
        Name: 'Studio F3',
        imageURL: 'asset/photography2.jpg',
        rating: 4.8,
        price: 50000
),
Service1(
        id: 2,
        Name: 'Weva Studio',
        imageURL: 'asset/photography3.jpg',
        rating: 4.8,
        price: 40000
),
Service1(
        id: 3,
        Name: 'Oliyan Studio',
        imageURL: 'asset/photography4.jpg',
        rating: 4.8,
        price: 150000
),
Service1(
        id: 4,
        Name: 'Heart & Cart',
        imageURL: 'asset/photography5.jpg',
        rating: 4.8,
        price: 30000
),];}