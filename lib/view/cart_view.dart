import 'package:flutter/material.dart';

import '../core/helper/build_app_bar.dart';
import '../core/helper/build_bottom_sheet.dart';
import '../core/resources/colors_manager.dart';
import '../core/widgets/app_button.dart';
import '../data/cart_items_data.dart';
import 'order_accepted_view.dart';
import '../widgets/cart_item_card.dart';
import '../widgets/checkout_bottom_sheet_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: "My Cart",
        bottom: const PreferredSize(
          preferredSize: Size(0, 15),
          child: Divider(
            height: 0,
            color: ColorsManager.dividerColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              indent: 25,
              endIndent: 25,
              color: Color(0xffE2E2E2),
            ),
            itemCount: CartItemsData.cartItems.length,
            itemBuilder: (context, index) => CartItemCard(
              cartItemModel: CartItemsData.cartItems[index],
            ),
          ),
          Positioned(
            bottom: 24.45,
            left: 25,
            right: 25,
            child: AppButton(
              hasTrailing: true,
              text: "Go to Checkout",
              onPressed: () {
                buildBottomSheet(context,
                    title: "Checkout",
                    buttonTitle: 'Place Order',
                    bottomSheetbody: const CheckoutBottomSheetBody(),
                    onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderAcceptedView(),
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
