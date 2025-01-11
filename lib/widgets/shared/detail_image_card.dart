import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isCornerRounded;
  final Color titleColor;

  const DetailImageCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isCornerRounded,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: titleColor),
        ),
        SizedBox(
          height: 10,
        ),
        isCornerRounded
            ? ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
            )
            : Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
        SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: mainTextColor,
          ),
        ),
      ],
    );
  }
}
