import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Color backgroundColor;
  final Color boderColor;
  final Function() onTap;
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.backgroundColor,
    required this.boderColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(18),
            ),
            border: Border.all(
              color: boderColor,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
            ),
            Text(
              title,
            ),
          ],
        ),
      ),
    );
  }
}
