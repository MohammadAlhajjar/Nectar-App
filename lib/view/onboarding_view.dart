import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/strings_manager.dart';
import '../core/resources/styles_manager.dart';
import '../core/widgets/main_bottom_navigation_bar_view.dart';
import '../core/widgets/app_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetsManager.onboardingBackgroundImage,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AssetsManager.logoImage),
            const Text(
              StringsManager.welcomeToOurStore,
              textAlign: TextAlign.center,
              style: StylesManager.whiteRegular48,
            ),
            const Gap(19),
            const Text(
              StringsManager.getYourGroceriesInAsFastAsOneHour,
              style: StylesManager.whiteGrayRegular16,
            ),
            const Gap(40.88),
            AppButton(
              hasTrailing: false,
              text: StringsManager.getStarted,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainBottomNavigationBarView(),
                  ),
                );
              },
            ),
            const Gap(90.84)
          ],
        ),
      ),
    );
  }
}
