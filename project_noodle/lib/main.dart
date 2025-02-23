import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_noodle/pages/CalculatorCal.dart';
import 'package:project_noodle/pages/homepage.dart';
import 'package:device_preview_plus/device_preview_plus.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = true;
  runApp(const MyApp());
}

// void main() => runApp(
//       DevicePreview(
//         enabled: true,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

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
        '/Calculator': (context) => Calculatorcal(),
        '/PageDetail': (context) => Pagedetail(
              id: 0,
              name: '',
              material: '',
              calorie: '',
              price: 0,
              img: '',
            )
      },
    );
  }
}
