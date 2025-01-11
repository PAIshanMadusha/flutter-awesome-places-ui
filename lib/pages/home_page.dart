import 'package:awesome_places/pages/book_tour_page/book_tour.dart';
import 'package:awesome_places/pages/cultural_page.dart';
import 'package:awesome_places/pages/land_marks.dart';
import 'package:awesome_places/pages/natural_wonders.dart';
import 'package:awesome_places/pages/night_life.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/home_page/category_card.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double sizedBoxValue = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 220, 241),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                              fontSize: 22,
                              color: mainTextColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                              fontSize: 50,
                              color: mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mainColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                      fontSize: 16,
                      color: mainTextColor,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Image.asset(
                  "assets/image 1.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Text(
                  "Select a Place From the Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWondersPage(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardBackgroundColor: fristCategoryColor,
                        cardWidth: 190,
                        categoryTitle: "Natural Wonders",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightLifePage(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardBackgroundColor: fristCategoryColor,
                        cardWidth: 190,
                        categoryTitle: "NightLife",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandMarksPage(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardBackgroundColor: secondCategoryColor,
                        cardWidth: 190,
                        categoryTitle: "LandMarks",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CulturalPage(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardBackgroundColor: secondCategoryColor,
                        cardWidth: 190,
                        categoryTitle: "Cultural",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxValue,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookATourPage(),
                      ),
                    );
                  },
                  child: CategoryCard(
                    cardBackgroundColor: thirdCategoryColor,
                    cardWidth: 400,
                    categoryTitle: "Book For A Ride Today!",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
