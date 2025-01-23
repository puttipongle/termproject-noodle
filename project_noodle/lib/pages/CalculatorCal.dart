import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Project-Noodle');
  }
}

class Calculatorcal extends StatefulWidget {
  const Calculatorcal({super.key});

  @override
  State<Calculatorcal> createState() => _CalculatorcalState();
}

class _CalculatorcalState extends State<Calculatorcal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          SizedBox(height: 50,),
          FoodSelection(label: 'Noodle'),
          FoodSelection(label: 'Soup'),
          FoodSelection(label: 'Topping'),
          ResultSection(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Calculator Calories',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              height: 32 / 24,
            ),
          ),
         
        ],
      ),
    );
  }
}

class FoodSelection extends StatelessWidget {
  final String label;

  const FoodSelection({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 31),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              height: 28 / 22,
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF4EAFA7),
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Dropdown',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Result',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 82,
            width: 297,
            color: const Color(0xFFDCD6D6),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () { },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 52, 188, 43),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              minimumSize: const Size(150, 60),
            ),
            child: const Text(
              'Calculator',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
