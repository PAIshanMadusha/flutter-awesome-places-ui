import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/land_marks/land_marks_card.dart';
import 'package:flutter/material.dart';

class LandMarksPage extends StatelessWidget {
  const LandMarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 197, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 197, 255),
        title: Text(
          "LandsMarks",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: mainLandMarksColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: mainTextColor),
              ),
              SizedBox(
                height: 15,
              ),
              LandMarksCard(
                title: "Landmarks Place-1",
                imageUrl: "assets/land1.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              SizedBox(
                height: 15,
              ),
              LandMarksCard(
                title: "Landmarks Place-2",
                imageUrl: "assets/land2.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
