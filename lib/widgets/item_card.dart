import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../core/resources/colors_manager.dart';
import '../core/resources/styles_manager.dart';
import '../model/item_model.dart';
import 'add_or_remove_icon_button.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;
  const ItemCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15.29,
        right: 15,
        bottom: 15,
        left: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        border: Border.all(
          color: ColorsManager.grayBorder,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            item.image,
          ),
          const Gap(10.29),
          Row(
            children: [
              Text(
                item.name,
                style: StylesManager.blackRegular16,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "${item.volume}, Price",
                style: StylesManager.grayRegular14,
              ),
            ],
          ),
          const SizedBox(
            height: 2.2,
          ),
          Row(
            children: [
              Text(
                "\$${item.price}",
                style: StylesManager.blackRegular18,
              ),
              const Spacer(),
              const AddOrRemoveIconButton(
                iconData: Icons.add,
              ),
            ],
          )
        ],
      ),
    );
  }
}
