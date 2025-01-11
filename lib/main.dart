import 'package:awesome_places/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Awesome Places Flutter Application",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}