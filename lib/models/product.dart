class Product {
  final String name;
  final String category;
  final double price;
  final String image;
  final double rating;
  final int reviews;
  final String description;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    this.rating = 5.0,
    this.reviews = 100,
    this.description = '',
  });
}