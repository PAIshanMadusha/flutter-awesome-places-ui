import 'package:awesome_places/pages/book_tour_page/book_tour_form.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/reusable/book_tour_page/vehical_card.dart';
import 'package:awesome_places/widgets/shared/rating.dart';
import 'package:flutter/material.dart';

class BookATourPage extends StatelessWidget {
  const BookATourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 198, 218),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 198, 218),
        title: Text(
          "Lets Book a Tour!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: mainColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: mainTextColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Select a Vehical",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: mainColor),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicalCard(
                    vehicalImage: "assets/car.png",
                    vehicalName: "Car",
                  ),
                  VehicalCard(
                    vehicalName: "Bike",
                    vehicalImage: "assets/bike.png",
                  ),
                  VehicalCard(
                    vehicalName: "Bus",
                    vehicalImage: "assets/bus.png",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Selected Palce",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Cultural 1.png",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // ignore: deprecated_member_use
                      color: mainBlack.withOpacity(0.2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: mainWhite,
                          ),
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: mainWhite,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RatingCard(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Fill the Details",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BookTourForm(),
            ],
          ),
        ),
      ),
    );
  }
}
