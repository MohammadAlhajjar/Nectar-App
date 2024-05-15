import 'package:flutter/material.dart';

import '../resources/styles_manager.dart';

AppBar buildAppBar({
  required String title,
  IconButton? leading,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    bottom: bottom,
    leading: leading,
    actions: actions,
    surfaceTintColor: Colors.green,
    centerTitle: true,
    title: Text(
      title,
      style: StylesManager.whiteRegular20,
    ),
  );
}
