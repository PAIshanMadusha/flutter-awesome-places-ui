import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class LandMarksCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  
  const LandMarksCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: subLandMarksColor,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: mainTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
