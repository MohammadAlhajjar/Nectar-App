import 'package:flutter/material.dart';

import '../core/resources/constants_manager.dart';
import '../core/widgets/app_text_field.dart';

class AddItemBottomSheetbody extends StatelessWidget {
  const AddItemBottomSheetbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextField(
          label: "Name",
        ),
        const AppTextField(
          label: "Description",
        ),
        const AppTextField(
          label: "Price",
        ),
        AppTextField(
          label: "Image",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: ConstantsManager.balckColor,
            ),
          ),
        ),
      ],
    );
  }
}
