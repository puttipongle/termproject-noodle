import 'package:flutter/material.dart';
import 'package:project_noodle/pages/CalculatorCal.dart';
import 'package:project_noodle/pages/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project-Noodle',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
       '/Calculator': (context) => Calculatorcal()
      },
    );
  }
}

