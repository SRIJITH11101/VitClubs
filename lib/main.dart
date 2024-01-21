import 'package:flutter/material.dart';
import 'package:vitclubs/Login/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vitclubs/Login/Signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const VitClubs());
}

class VitClubs extends StatelessWidget {
  const VitClubs({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
