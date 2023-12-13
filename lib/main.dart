import 'package:flutter/material.dart';
import 'package:vitclubs/Home.dart';
import 'DescriptionPage.dart';

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
