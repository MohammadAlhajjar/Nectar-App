import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/strings_manager.dart';
import '../core/resources/styles_manager.dart';
import '../core/widgets/app_button.dart';

class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsManager.orderViewBackgroundImage,
            ),
          ),
        ),
        child: Column(
          children: [
            const Gap(151.7),
            SvgPicture.asset(
              AssetsManager.orderAcceptedImage,
            ),
            const Gap(66.67),
            const Text(
              StringsManager.youOrderHasBeenAccepted,
              textAlign: TextAlign.center,
              style: StylesManager.blackRegular28,
            ),
            const Gap(4),
            const Text(
              StringsManager
                  .yourItemsHasBeenPlaccdAndIsOnItsWayToBeingProcessed,
              textAlign: TextAlign.center,
              style: StylesManager.grayRegular16,
            ),
            const Gap(134.83),
            AppButton(
              text: "Track Order",
              onPressed: () {},
              hasTrailing: false,
            ),
            AppButton(
              text: "Back to home",
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              hasTrailing: false,
              backgroundColor: Colors.transparent,
              foregroundColor: const Color(0xff181725),
            ),
          ],
        ),
      ),
    );
  }
}
