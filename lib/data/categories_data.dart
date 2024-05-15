import '../core/resources/assets_manager.dart';
import '../core/resources/colors_manager.dart';
import '../model/category_model.dart';

class CategoriesData {
  static const List<CategoryModel> categories = [
    CategoryModel(
      image: AssetsManager.frashFruitsAndVegetableImage,
      title: 'Frash Fruits\n& Vegetable',
      backgroundColor: ColorsManager.greenBackgroundColor,
      borderColor: ColorsManager.greenBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.cookingOilGheeImage,
      title: 'Cooking Oil\n& Ghee',
      backgroundColor: ColorsManager.orangeBackgroundColor,
      borderColor: ColorsManager.orangeBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.meatFishImage,
      title: 'Meat & Fish',
      backgroundColor: ColorsManager.redBackgroundColor,
      borderColor: ColorsManager.redBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.bakerySnacksImage,
      title: 'Bakery & Snacks',
      backgroundColor: ColorsManager.purpleBackgroundColor,
      borderColor: ColorsManager.purpleBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.dairyEggsImage,
      title: 'Dairy & Eggs',
      backgroundColor: ColorsManager.yellowBackgroundColor,
      borderColor: ColorsManager.yellowBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.beveragesImage,
      title: 'Beverages',
      backgroundColor: ColorsManager.blueBackgroundColor,
      borderColor: ColorsManager.blueBorderColor,
    ),
    CategoryModel(
      image: AssetsManager.frashFruitsAndVegetableImage,
      title: 'Frash Fruits\n& Vegetable',
      backgroundColor: ColorsManager.purple2BackgroundColor,
      borderColor: ColorsManager.purple2BorderColor,
    ),
    CategoryModel(
      image: AssetsManager.frashFruitsAndVegetableImage,
      title: 'Frash Fruits\n& Vegetable',
      backgroundColor: ColorsManager.pinkBackgroundColor,
      borderColor: ColorsManager.pinkBorderColor,
    ),
  ];
}
