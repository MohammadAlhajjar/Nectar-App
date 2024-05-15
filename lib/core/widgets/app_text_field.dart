import 'package:flutter/material.dart';

import '../resources/colors_manager.dart';
import '../resources/styles_manager.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final IconButton? suffixIcon;
  const AppTextField({
    super.key,
    required this.label,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorsManager.primaryColor,
      decoration: InputDecoration(
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 25,
        ),
        label: Text(
          label,
          style: StylesManager.grayRegular18,
        ),
        suffixIcon: suffixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.dividerColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
