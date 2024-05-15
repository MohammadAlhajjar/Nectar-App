import 'package:flutter/material.dart';

class AppClearIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color iconColor;
  const AppClearIconButton({
    super.key,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        color: iconColor,
        Icons.clear,
      ),
    );
  }
}
