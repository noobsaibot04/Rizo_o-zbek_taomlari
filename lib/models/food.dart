class Food {
  final String name;
  final String category;
  final String description;
  final String imageUrl;
  final double price;
  final List<String> ingredients;

  const Food({
    required this.name,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.ingredients,
  });
}
