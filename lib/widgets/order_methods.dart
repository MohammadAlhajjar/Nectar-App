import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/colors_manager.dart';
import '../core/resources/styles_manager.dart';

class OrderMethods extends StatelessWidget {
  final String title;
  final String leading;
  final bool leadingHasImage;
  const OrderMethods({
    super.key,
    required this.title,
    required this.leading,
    required this.leadingHasImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: StylesManager.grayRegular18,
            ),
            const Spacer(),
            leadingHasImage
                ? SizedBox(
                    width: 21,
                    height: 16,
                    child: Image.asset(AssetsManager.paymentImage))
                : Text(
                    leading,
                    style: StylesManager.blackRegular16,
                  ),
            const Gap(15),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
        const Gap(17),
        const Divider(
          color: ColorsManager.dividerColor,
        ),
      ],
    );
  }
}
