import 'package:flutter/material.dart';
import 'package:vitclubs/Home.dart';
<<<<<<< HEAD
import 'package:vitclubs/Technical1.dart';
=======
import 'DescriptionPage.dart';
>>>>>>> e23ce14e4975a901d9028aeab4faaf329c7a3017

void main() {
  runApp(const VitClubs());
}

class VitClubs extends StatelessWidget {
  const VitClubs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
