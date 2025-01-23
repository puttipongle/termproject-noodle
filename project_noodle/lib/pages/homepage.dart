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
    return Scaffold(
        backgroundColor: Color(0xffedf3f6),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(children: <Widget>[
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF2a2b31),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('ร้านก๋วยเตี๋ยวเจ๊ศรี')],
                      ),
                    ),
                  ),
                  Container(),
                ]),
              ],
            ),
          ),
        ));
  }
}
