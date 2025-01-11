import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonShared extends StatelessWidget {

  final Color backgroundColor;
  final String buttonText;

  const ButtonShared({
    super.key,
    required this.buttonText, 
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16, color: mainBlack),
        ),
      ),
    );
  }
}
