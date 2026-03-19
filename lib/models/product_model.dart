class Product {
  int id;
  String name;
  double price;
  String image;
  double rating;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
     this.rating = 0,
  });
}
