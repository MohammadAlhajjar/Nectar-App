import 'package:flutter/material.dart';

import '../core/helper/build_app_bar.dart';
import '../core/resources/strings_manager.dart';
import '../data/categories_data.dart';
import 'category_items_view.dart';
import '../widgets/category_card.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: StringsManager.findProducts),
      body: GridView.builder(
        padding: const EdgeInsets.only(
          bottom: 25,
          right: 25,
          left: 25,
        ),
        itemCount: CategoriesData.categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 189.11,
        ),
        itemBuilder: (context, index) {
          return CategoryCard(
            image: CategoriesData.categories[index].image,
            title: CategoriesData.categories[index].title,
            backgroundColor: CategoriesData.categories[index].backgroundColor,
            boderColor: CategoriesData.categories[index].borderColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryItemsView(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
