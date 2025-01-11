import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/detail_image_card.dart';
import 'package:flutter/material.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 217, 221),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 217, 221),
        title: Text(
          "NightLife",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: mainNightLifeColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                height: 20,
              ),
              DetailImageCard(
                title: "Nightlife Place-1",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "assets/night2.png",
                isCornerRounded: true,
                titleColor: subNightLifeColor,
              ),
              SizedBox(
                height: 20,
              ),
              DetailImageCard(
                title: "Nightlife Place-2",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl: "assets/night1.png",
                isCornerRounded: true,
                titleColor: subNightLifeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
