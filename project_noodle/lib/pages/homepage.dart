import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Project-Noodle');
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Noodle Aroi Mak Mak',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/Calculator',
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD59131),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              minimumSize: const Size(288, 56),
            ),
            child: const Text(
              'Calculator Calories',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Section title',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 4,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              color: Color(0xFFCAC4D0),
            ),
            itemBuilder: (context, index) => const MenuListItem(),
          ),
        ),
      ],
    );
  }
}

class MenuListItem extends StatelessWidget {
  const MenuListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'List item',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Supporting line text lorem ipsum dolor sit amet, consectetur.',
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.25,
                    color: Color(0xFF49454F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
