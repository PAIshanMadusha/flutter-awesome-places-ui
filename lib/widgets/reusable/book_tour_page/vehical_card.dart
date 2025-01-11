import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class VehicalCard extends StatelessWidget {
  final String vehicalName;
  final String vehicalImage;

  const VehicalCard({
    super.key,
    required this.vehicalName,
    required this.vehicalImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                vehicalImage,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              vehicalName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: fristCategoryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
