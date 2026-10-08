class Product {
  final String name;
  final String category;
  final String image;
  final double price;
  final double rating;
  final String description;
  final double? oldPrice; // optional, used for sale badge
  final bool isNew;

  const Product({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    this.oldPrice,
    this.isNew = false,
  });

  /// Discount percentage if the product is on sale, otherwise null.
  int? get discountPercent {
    if (oldPrice == null || oldPrice! <= price) return null;
    return (((oldPrice! - price) / oldPrice!) * 100).round();
  }
}
