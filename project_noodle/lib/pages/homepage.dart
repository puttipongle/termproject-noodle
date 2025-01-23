import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          padding:
                              EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 101, 210, 234),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GlowingBorder(
                                  child: Container(
                                    width: 300,
                                    height: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'ร้านก๋วยเตี๋ยวป้าศรี เจ้าเก่า',
                                      style: GoogleFonts.mitr(
                                        fontSize: 20,
                                        color: Colors.black,
                                        decoration:
                                            TextDecoration.none, // ลบเส้นขีดใต้
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ],
            )
            ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/Calculator',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 142, 238, 69),
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
            ],
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
      ]),
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
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Supporting line text lorem ipsum dolor sit amet, consectetur.',
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.25,
                    color: Color(0xFF49454F),
                    decoration: TextDecoration.none,
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

class GlowingBorder extends StatefulWidget {
  final Widget child;

  const GlowingBorder({required this.child, Key? key}) : super(key: key);

  @override
  _GlowingBorderState createState() => _GlowingBorderState();
}

class _GlowingBorderState extends State<GlowingBorder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          padding: const EdgeInsets.all(4), // ระยะขอบกรอบไฟ
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: SweepGradient(
              colors: [
                Colors.blue,
                Colors.purple,
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
              ],
              stops: const [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.0],
              transform: GradientRotation(_controller.value * 2 * 3.14159),
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}
