import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/detail_image_card.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 255, 213),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 178, 255, 213),
        title: Text(
          "Natural Wonders",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: mainNaturalWondersColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: mainTextColor),
              ),
              SizedBox(
                height: 10,
              ),
              DetailImageCard(
                title: "Nature Wonders Place-1",
                imageUrl: "assets/nature2.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isCornerRounded: false,
                titleColor: subNaturalWondersColor,    
              ),
              SizedBox(
                height: 15,
              ),
              DetailImageCard(
                title: "Nature Wonders Place-2",
                imageUrl: "assets/nature1.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                    isCornerRounded: false,
                    titleColor: subNaturalWondersColor,
              ),
              SizedBox(
                height: 15,
              ),
              DetailImageCard(
                title: "Nature Wonder Place-3",
                imageUrl: "assets/nature3.png",
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                    isCornerRounded: false,
                    titleColor: subNaturalWondersColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
