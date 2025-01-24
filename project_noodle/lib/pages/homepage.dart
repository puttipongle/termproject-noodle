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

class Noodle {
  late String name;
  late String material;
  late String calorie;
  late String img;

  Noodle(
      {required this.name,
      required this.material,
      required this.calorie,
      required this.img});
}

class _HomePageState extends State<HomePage> {
  List<Noodle> noodle = [
    Noodle(
        name: 'ข้าวซอยไก่',
        material: 'เส้นข้าวซอย น่องไก่',
        calorie: '710',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'เส้นเล็กน้ำตกหมู',
        material: 'เส้นเล็ก หมูนุ่ม ลูกชิ้นหมู',
        calorie: '540',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'หมี่เหลืองน้ำใสหมู',
        material: 'เส้นหมี่เหลือง หมูนุ่ม ลูกชิ้นหมู',
        calorie: '590',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'เส้นเล็กน้ำตกเนื้อ',
        material: 'เส้นเล็ก เนื้อวัว ลูกชิ้นเนื้อ',
        calorie: '670',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'หมี่เกี๊ยวหมูแดง',
        material: 'หมี่เหลือง เกี๊ยว หมูแดง ลูกชิ้นหมู',
        calorie: '840',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'หมี่เกี๊ยวหมูแดงต้มยำ',
        material: 'หมี่เหลือง เกี๊ยว หมูแดง หมูสับ ลูกชิ้นหมู',
        calorie: '1030',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'เส้นใหญ่ต้มยำ',
        material: 'เส้นใหญ่ หมูนุ่ม หมูสับ ลูกชิ้นหมู',
        calorie: '710',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'เส้นกลางต้มยำ',
        material: 'เส้นกลาง หมูนุ่ม หมูสับ ลูกชิ้นหมู',
        calorie: '690',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'เส้นกลางน้ำใส',
        material: 'เส้นกลาง หมูนุ่ม ลูกชิ้นหมู',
        calorie: '500',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'หมี่หยกต้มยำ',
        material: 'หมี่หยก เกี๊ยว หมูแดง ลูกชิ้นหมู',
        calorie: '960',
        img: 'thai-noodle.jpg'),
    Noodle(
        name: 'หมี่เหลืองน้ำตกหมู',
        material: 'หมี่เหลือง หมูนุ่ม ลูกชิ้นหมู',
        calorie: '650',
        img: 'thai-noodle.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFF3E0),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg/back1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: Stack(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 5, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GlowingBorder(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 45, 45, 45),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'ร้านก๋วยเตี๋ยวป้าศรี',
                                    style: GoogleFonts.sriracha(
                                      fontSize: 23,
                                      color: Colors.white,
                                      decoration:
                                          TextDecoration.none, // ลบเส้นขีดใต้
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.black.withOpacity(0.2)),
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
                              backgroundColor:
                                  const Color.fromARGB(255, 116, 231, 77),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              minimumSize: const Size(288, 56),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.calculate,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Text(
                                    ' เครื่องคำนวณแคลลอรี ',
                                    style: GoogleFonts.sriracha(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 132, 233, 136).withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'เมนูก๋วยเตี๋ยวยอดฮิต!!',
                    style: GoogleFonts.sriracha(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230).withOpacity(0.8),
                  ),
                  child: ListView.builder(
                      itemCount: noodle.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                                style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                noodle[index].name),
                            subtitle: Text(
                                style: GoogleFonts.sarabun(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                'ส่วนประกอบ : ${noodle[index].material} \nแคลลอรี : ${noodle[index].calorie} กิโลแคลอรี'),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/bg/${noodle[index].img}'),
                            ),
                          ),
                        );
                      })),
            ),
          ]),
        ));
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
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 211, 48, 48),
                  child: const Text('AH'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
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
                      'Supporting line text lorem ipsum.',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.25,
                        color: Color(0xFF49454F),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//จัดการป้ายไฟวิ่ง
class GlowingBorder extends StatefulWidget {
  final Widget child;

  const GlowingBorder({required this.child, super.key});

  @override
  // ignore: library_private_types_in_public_api
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
          padding: const EdgeInsets.all(6), // ระยะขอบกรอบไฟ
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.red.withOpacity(0.5),
                blurRadius: 8,
                spreadRadius: 4,
              ),
            ],
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
