import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../core/resources/styles_manager.dart';
import 'order_methods.dart';

class CheckoutBottomSheetBody extends StatelessWidget {
  const CheckoutBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        const OrderMethods(
          title: "Delivery",
          leading: "Select Method",
          leadingHasImage: false,
        ),
        const Gap(20),
        const OrderMethods(
          title: "Payment",
          leading: "Select Method",
          leadingHasImage: true,
        ),
        const Gap(20),
        const OrderMethods(
          title: "Promo Code",
          leading: "Pick discount",
          leadingHasImage: false,
        ),
        const Gap(20),
        const OrderMethods(
          title: "Total Cost",
          leading: "\$13.97",
          leadingHasImage: false,
        ),
        const Gap(20),
        RichText(
          textAlign: TextAlign.left,
          text: const TextSpan(
            children: [
              TextSpan(
                text: "By placing an order you agree to our\n",
                style: StylesManager.grayRegular14,
              ),
              TextSpan(
                text: "Terms ",
                style: StylesManager.blackRegular14,
              ),
              TextSpan(
                text: "And ",
                style: StylesManager.grayRegular14,
              ),
              TextSpan(
                text: "Conditions",
                style: StylesManager.blackRegular14,
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Home",
              style: StylesManager.blackRegular14,
            ),
            Text(
              "profile",
              style: StylesManager.blackRegular14,
            ),
          ],
        ),
      ],
    );
  }
}
