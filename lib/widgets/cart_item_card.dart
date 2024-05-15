import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../core/resources/colors_manager.dart';
import '../core/resources/styles_manager.dart';
import '../core/widgets/app_clear_icon_button.dart';
import '../model/cart_item_model.dart';
import 'add_or_remove_icon_button.dart';

class CartItemCard extends StatelessWidget {
  final CartItemModel cartItemModel;
  const CartItemCard({
    super.key,
    required this.cartItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(cartItemModel.image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItemModel.name,
                style: StylesManager.blackRegular18,
              ),
              const Gap(5),
              Text(
                "${cartItemModel.quantity}, Price",
                style: StylesManager.grayRegular14,
              ),
              const Gap(12),
              Row(
                children: [
                  const AddOrRemoveIconButton(
                    iconSize: 32,
                    iconData: Icons.remove,
                    backgroundColor: Colors.white,
                    borderColor: Color(0xfff0f0f0),
                    iconColor: Color(0xffB3B3B3),
                  ),
                  const Gap(17.45),
                  Text(
                    "${cartItemModel.initialCount}",
                    style: StylesManager.blackRegular16,
                  ),
                  const Gap(17.45),
                  const AddOrRemoveIconButton(
                    iconSize: 32,
                    iconData: Icons.add,
                    backgroundColor: Colors.white,
                    borderColor: Color(0xfff0f0f0),
                    iconColor: ColorsManager.primaryColor,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              AppClearIconButton(
                onTap: () {},
                iconColor: const Color(
                  0xffB3B3B3,
                ),
              ),
              const Gap(50),
              Text(
                "\$${cartItemModel.price.toStringAsFixed(2)}",
                style: StylesManager.blackRegular18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
