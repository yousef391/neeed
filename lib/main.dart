import 'package:flutter/material.dart';
import 'package:sign_in/onboarding/Onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home/home/views/categorie.dart';
import 'home/home/views/needsscreen.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(my_app());
}

class my_app extends StatefulWidget {
  const my_app({super.key});

  @override
  State<my_app> createState() => _my_appState();
}

class _my_appState extends State<my_app> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
