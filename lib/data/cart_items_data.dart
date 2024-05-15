import '../core/resources/assets_manager.dart';
import '../model/cart_item_model.dart';

class CartItemsData {
  static const List<CartItemModel> cartItems = [
    CartItemModel(
      image: AssetsManager.bellPapperRedImage,
      name: "Bell Pepper Red",
      quantity: "1kg",
      initialCount: 1,
      price: 4.99,
    ),
    CartItemModel(
      image: AssetsManager.eggChickenRedImage,
      name: "Egg Chicken Red",
      quantity: "4pcs",
      initialCount: 1,
      price: 1.99,
    ),
    CartItemModel(
      image: AssetsManager.organicBananasImage,
      name: "Organic Bananas",
      quantity: "12kg",
      initialCount: 1,
      price: 3.00,
    ),
    CartItemModel(
      image: AssetsManager.gingerImage,
      name: "Ginger",
      quantity: "250gm",
      initialCount: 1,
      price: 2.99,
    ),
  ];
}
