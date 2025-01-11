import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/button.dart';
import 'package:awesome_places/widgets/shared/input.dart';
import 'package:flutter/material.dart';

class BookTourForm extends StatelessWidget {
  const BookTourForm({super.key});

  final int number = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: mainTextColor,
          ),
        ),
        InputFeild(hintText: "Jonn"),
        SizedBox(
          height: 15,
        ),
        Text(
          "Country",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: mainTextColor,
          ),
        ),
        InputFeild(
          hintText: "SriLanka",
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Team Size",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: mainTextColor,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: mainColor,
                  ),
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: mainWhite,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Add or Remove Team Members",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: mainTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonShared(
                          buttonText: "Add +",
                          backgroundColor: mainGreenColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ButtonShared(
                          buttonText: "Remove -",
                          backgroundColor: mainRedColor,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(),
        SizedBox(
          height: 15,
        ),
        Text(
          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: mainTextColor,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonShared(
                buttonText: "Submit",
                backgroundColor: thirdCategoryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
