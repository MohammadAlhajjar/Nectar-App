import '../core/resources/assets_manager.dart';
import '../model/item_model.dart';

class ItemsData {
  static const List<ItemModel> items = [
    ItemModel(
      image: AssetsManager.dietCokeImage,
      name: 'Diet Coke',
      volume: '355ml',
      price: 1.99,
    ),
    ItemModel(
      image: AssetsManager.spriteImage,
      name: 'Sprite Can',
      volume: '355ml',
      price: 1.50,
    ),
    ItemModel(
      image: AssetsManager.appleGrapeJuiceImage,
      name: 'Apple & Grape\nJuice',
      volume: '2L',
      price: 5.99,
    ),
    ItemModel(
      image: AssetsManager.orengeJuiceImage,
      name: 'Orenge Juice',
      volume: '2L',
      price: 8.99,
    ),
    ItemModel(
      image: AssetsManager.cocaColaImage,
      name: 'Coca Cola Can',
      volume: '355ml',
      price: 4.99,
    ),
    ItemModel(
      image: AssetsManager.dietCokeImage,
      name: 'Pepsi Can ',
      volume: '355ml',
      price: 4.99,
    ),
  ];
}
