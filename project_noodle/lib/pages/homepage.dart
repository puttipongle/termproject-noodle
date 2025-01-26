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
  late int id;
  late String name;
  late String material;
  late String calorie;
  late int price;
  late String img;

  Noodle(
      {required this.id,
      required this.name,
      required this.material,
      required this.calorie,
      required this.price,
      required this.img});
}

class _HomePageState extends State<HomePage> {
  List<Noodle> noodle = [
    Noodle(
        id: 1,
        name: 'ข้าวซอยไก่',
        material:
            'เส้นข้าวซอย 240 กิโลแคลลอรี \nน้ำข้าวซอย 250 กิโลแคลลอรี \nน่องไก่ 220 กิโลแคลลอรี',
        calorie: '710',
        price: 40,
        img: '1-kaosoy.jpg'),
    Noodle(
        id: 2,
        name: 'เส้นเล็กน้ำตกหมู',
        material:
            'เส้นเล็ก 140 กิโลแคลลอรี \nน้ำตก 100 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '540',
        price: 40,
        img: '2-leknamtok.jpg'),
    Noodle(
        id: 3,
        name: 'หมี่เหลืองน้ำใสหมู',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำใส 40 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '590',
        price: 40,
        img: '3-eggnamsai.jpg'),
    Noodle(
        id: 4,
        name: 'เส้นเล็กน้ำตกเนื้อ',
        material:
            'เส้นเล็ก 140 กิโลแคลลอรี \nน้ำตก 100 กิโลแคลลอรี \nเนื้อวัว 250 กิโลแคลลอรี \nลูกชิ้นเนื้อ 180 กิโลแคลลอรี',
        calorie: '670',
        price: 50,
        img: '4-leknamtokcow.jpg'),
    Noodle(
        id: 5,
        name: 'หมี่เกี๊ยวหมูแดง',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำใส 40 กิโลแคลลอรี \nเกี๊ยว 200 กิโลแคลลอรี \nหมูแดง 200 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '840',
        price: 45,
        img: '5-Mheemoodaeng.jpg'),
    Noodle(
        id: 6,
        name: 'หมี่เกี๊ยวหมูแดงต้มยำ',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nเกี๊ยว 200 กิโลแคลลอรี \nหมูแดง 200 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '1030',
        price: 50,
        img: '6-Mheemoodaeng-tomyum.jpg'),
    Noodle(
        id: 7,
        name: 'เส้นใหญ่ต้มยำ',
        material:
            'เส้นใหญ่ 180 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '710',
        price: 40,
        img: '7-yaitomyum.jpg'),
    Noodle(
        id: 8,
        name: 'วุ้นเส้นต้มยำ',
        material:
            'วุ้นเส้น 160 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '690',
        price: 40,
        img: '8-woonsentomyum.jpg'),
    Noodle(
        id: 9,
        name: 'หมี่หยกต้มยำ',
        material:
            'เส้นหมี่หยก 180 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nเกี๊ยว 200 กิโลแคลลอรี \nหมูแดง 200 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '960',
        price: 50,
        img: '9-jadetomyum.jpg'),
    Noodle(
        id: 10,
        name: 'หมี่เหลืองน้ำตกหมู',
        material:
            'เส้นหมี่เหลีอง 250 กิโลแคลลอรี \nน้ำตก 100 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '650',
        price: 40,
        img: '10-enggtomyummoo.jpg'),
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
            Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    color: const Color.fromARGB(255, 230, 230, 230)
                        .withOpacity(0.6),
                  ),
                  child: ListView.builder(
                      itemCount: noodle.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () async {
                              await Navigator.pushNamed(context, '/PageDetail',
                                  arguments: Noodle(
                                    id: noodle[index].id,
                                    name: noodle[index].name,
                                    material: noodle[index].material,
                                    calorie: noodle[index].calorie,
                                    price: noodle[index].price,
                                    img: noodle[index].img,
                                  ));
                            },
                            child: Card(
                              child: ListTile(
                                title: Text(
                                    style: GoogleFonts.sarabun(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    noodle[index].name),
                                subtitle: Text(
                                    style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    'แคลลอรี : ${noodle[index].calorie} กิโลแคลอรี \nราคา : ${noodle[index].price} บาท'),
                                trailing: Text(
                                  '>> ดูเพิ่มเติม <<',
                                  style: GoogleFonts.sarabun(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/noodle/${noodle[index].img}'),
                                ),
                              ),
                            ));
                      })),
            ),
          ]),
        ));
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

class BlinkingText extends StatefulWidget {
  final String text;
  final Color color1;
  final Color color2;

  const BlinkingText({
    required this.text,
    required this.color1,
    required this.color2,
    Key? key,
  }) : super(key: key);

  @override
  _BlinkingTextState createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // ระยะเวลา 1 วินาที
    )..repeat(reverse: true); // สลับไปมาอย่างต่อเนื่อง

    _colorAnimation = ColorTween(
      begin: widget.color1,
      end: widget.color2,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // ปิด AnimationController เมื่อ Widget ถูกลบ
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Text(
          widget.text,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _colorAnimation.value,
          ),
        );
      },
    );
  }
}

class Pagedetail extends StatefulWidget {
  Pagedetail(
      {super.key,
      required this.id,
      required this.name,
      required this.material,
      required this.calorie,
      required this.price,
      required this.img});

  late int id;
  late String name;
  late String material;
  late String calorie;
  late int price;
  late String img;

  @override
  State<Pagedetail> createState() => _Pagedetail();
}

class _Pagedetail extends State<Pagedetail> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Noodle;
    late int id = args.id!;
    late String name = args.name!;
    late String material = args.material!;
    late String calorie = args.calorie!;
    late int price = args.price!;
    late String img = args.img!;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/back3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 185, 186, 185)
                                          .withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_sharp,
                                  color: Colors.black,
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'รายละเอียดของเมนู',
                      style: GoogleFonts.sarabun(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 240,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/noodle/$img"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 350,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ชื่อเมนู',
                                  style: GoogleFonts.sarabun(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  name,
                                  style: GoogleFonts.sarabun(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'ส่วนประกอบ',
                                  style: GoogleFonts.sarabun(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    material,
                                    style: GoogleFonts.sarabun(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'แคลลอรี',
                                  style: GoogleFonts.sarabun(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '$calorie กิโลแคลลอรี',
                                  style: GoogleFonts.sarabun(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'ราคา',
                                  style: GoogleFonts.sarabun(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '$price บาท',
                                  style: GoogleFonts.sarabun(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
