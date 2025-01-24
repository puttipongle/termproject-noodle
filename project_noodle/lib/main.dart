import 'package:flutter/material.dart';
import 'package:project_noodle/pages/CalculatorCal.dart';
import 'package:project_noodle/pages/homepage.dart';
//import 'package:device_preview_plus/device_preview_plus.dart';

void main() {
  runApp(const MyApp());
}

// void main() => runApp(
//   DevicePreview(
//     enabled: true,
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );

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

