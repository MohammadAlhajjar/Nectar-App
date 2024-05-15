import 'package:flutter/material.dart';

import '../core/helper/build_app_bar.dart';
import '../core/helper/build_bottom_sheet.dart';
import '../core/resources/strings_manager.dart';
import '../data/items_data.dart';
import '../widgets/add_item_text_fields_section.dart';
import '../widgets/add_or_remove_icon_button.dart';
import '../widgets/item_card.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: StringsManager.beverages,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          AddOrRemoveIconButton(
            borderRadius: 10,
            width: 30,
            height: 30,
            iconSize: 15.46,
            margin: 19,
            iconData: Icons.add,
            onTap: () {
              buildBottomSheet(
                context,
                title: "Add",
                buttonTitle: 'Add Item',
                bottomSheetbody: const AddItemBottomSheetbody(),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(
          bottom: 25,
          right: 25,
          left: 25,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.04,
          crossAxisSpacing: 14.8,
          mainAxisExtent: 252,
        ),
        itemCount: ItemsData.items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            item: ItemsData.items[index],
          );
        },
      ),
    );
  }
}
