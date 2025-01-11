import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color cardBackgroundColor;
  final double cardWidth;
  final String categoryTitle;

  const CategoryCard({
    super.key,
    required this.cardBackgroundColor,
    required this.cardWidth,
    required this.categoryTitle,
  });

  final double cardHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardBackgroundColor,
      ),
      child: Center(
        child: Text(
          categoryTitle,
          style: TextStyle(
            fontSize: 18,
            color: mainBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
