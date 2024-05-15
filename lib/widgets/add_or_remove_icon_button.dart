import 'package:flutter/material.dart';

import '../core/resources/colors_manager.dart';

class AddOrRemoveIconButton extends StatelessWidget {
  final double? borderRadius;
  final IconData iconData;
  final double? width;
  final double? height;
  final double? iconSize;
  final double? margin;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback? onTap;
  const AddOrRemoveIconButton({
    super.key,
    this.borderRadius,
    this.width,
    this.height,
    this.iconSize,
    this.margin,
    this.onTap,
    this.iconColor,
    this.backgroundColor,
    this.borderColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        margin: EdgeInsets.only(right: margin ?? 0),
        width: width ?? 45.67,
        height: height ?? 45.67,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          color: backgroundColor ?? ColorsManager.primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius ?? 17),
          ),
        ),
        child: Icon(
          size: iconSize ?? 34,
          iconData,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}
