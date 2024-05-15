import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'order_methods.dart';

class CheckoutBottomSheetBody extends StatelessWidget {
  const CheckoutBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(20),
        OrderMethods(
          title: "Delivery",
          leading: "Select Method",
          leadingHasImage: false,
        ),
        Gap(20),
        OrderMethods(
          title: "Payment",
          leading: "Select Method",
          leadingHasImage: true,
        ),
        Gap(20),
        OrderMethods(
          title: "Promo Code",
          leading: "Pick discount",
          leadingHasImage: false,
        ),
        Gap(20),
        OrderMethods(
          title: "Total Cost",
          leading: "\$13.97",
          leadingHasImage: false,
        ),
      ],
    );
  }
}
