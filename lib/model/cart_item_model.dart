class CartItemModel {
  final String image;
  final String name;
  final String quantity;
  final int initialCount;
  final double price;

  const CartItemModel({
    required this.image,
    required this.name,
    required this.quantity,
    required this.initialCount,
    required this.price,
  });
}
