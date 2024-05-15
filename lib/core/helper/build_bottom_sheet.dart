import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/colors_manager.dart';
import '../resources/constants_manager.dart';
import '../resources/styles_manager.dart';
import '../widgets/app_button.dart';
import '../widgets/app_clear_icon_button.dart';

Future<void> buildBottomSheet(BuildContext context,
    {required String title,
    required String buttonTitle,
    required Widget bottomSheetbody,
    required Function() onPressed,
    p}) async {
  showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    backgroundColor: ColorsManager.bottomSheetBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    isDismissible: false,
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    title,
                    style: StylesManager.blackRegular24,
                  ),
                  const Spacer(),
                  AppClearIconButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    iconColor: ConstantsManager.balckColor,
                  )
                ],
              ),
            ),
            const Divider(
              color: ColorsManager.dividerColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: bottomSheetbody,
            ),
            const Gap(43),
            AppButton(
              hasTrailing: false,
              text: buttonTitle,
              onPressed: onPressed,
            ),
            const Gap(28),
          ],
        ),
      );
    },
  );
}
