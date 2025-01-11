import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: landMarksCardBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          Icon(
            Icons.star,
            size: 40,
            color: mainTextColor,
          ),
        ],
      ),
    );
  }
}
