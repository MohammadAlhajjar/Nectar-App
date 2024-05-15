import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/colors_manager.dart';
import '../resources/constants_manager.dart';
import '../resources/styles_manager.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool hasTrailing;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.hasTrailing,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        textStyle: StylesManager.blackRegular18,
        foregroundColor: foregroundColor ?? const Color(0xffFFF9FF),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(
            19,
          ),
        )),
        minimumSize: const Size(353, 67),
        backgroundColor: backgroundColor ?? ColorsManager.primaryColor,
      ),
      onPressed: onPressed,
      child: hasTrailing
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text),
                const Gap(47.7),
                Container(
                  width: 43,
                  height: 22,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color(0xff489E67),
                  ),
                  child: const Center(
                    child: Text(
                      "\$12.96",
                      style: TextStyle(
                        color: Color(0xffFCFCFC),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: ConstantsManager.fontFamilyPoppins,
                      ),
                    ),
                  ),
                )
              ],
            )
          : Text(text),
    );
  }
}
