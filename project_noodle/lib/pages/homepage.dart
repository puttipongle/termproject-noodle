
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
        name: 'วุ้นเส้นต้มยำ',
        material:
            'วุ้นเส้น 100 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '730',
        price: 40,
        img: '1-glassnoodletomyum.jpg'),
    Noodle(
        id: 2,
        name: 'บะหมี่กึ่งสำเร็จรูปน้ำใส',
        material:
            'เส้นบะหมี่กึ่งสำเร็จรูป 250 กิโลแคลลอรี \nน้ำใส 40 กิโลแคลลอรี \nลูกชิ้นปลา 180 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '620',
        price: 40,
        img: '2-mamanamsai.jpg'),
    Noodle(
        id: 3,
        name: 'เส้นกลางต้มยำ',
        material:
            'เส้นกลาง 160 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี \nหมูตุ๋น 250 กิโลแคลลอรี',
        calorie: '790',
        price: 50,
        img: '3-m_noodletomyum.jpg'),
    Noodle(
        id: 4,
        name: 'หมี่ขาวน้ำใส',
        material:
            'เส้นหมี่ขาว 138 กิโลแคลลอรี \nน้ำใส 40 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '478',
        price: 40,
        img: '4-ricenoodlenumsai.jpg'),
    Noodle(
        id: 5,
        name: 'หมี่เหลืองต้มยำเกี๊ยวหมู',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nเกี๊ยวหมู 200 กิโลแคลลอรี \nหมูแดง 200 กิโลแคลลอรี',
        calorie: '730',
        price: 40,
        img: '5-eggnoodletomyum.jpg'),
    Noodle(
        id: 6,
        name: 'หมี่เหลืองน้ำใส',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำใส 40 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '590',
        price: 40,
        img: '6-eggnoodlenamsai.png'),
    Noodle(
        id: 7,
        name: 'เส้นเล็กน้ำตก',
        material:
            'เส้นเล็ก 180 กิโลแคลลอรี \nน้ำตก 100 กิโลแคลลอรี \nหมูสับ 150 กิโลแคลลอรี',
        calorie: '430',
        price: 40,
        img: '7-thinnoodle-namtok.jpg'),
    Noodle(
        id: 8,
        name: 'หมี่เหลืองต้มยำหมูนุ่ม',
        material:
            'เส้นหมี่เหลือง 250 กิโลแคลลอรี \nน้ำต้มยำ 80 กิโลแคลลอรี \nหมูนุ่ม 150 กิโลแคลลอรี \nลูกชิ้นหมู 150 กิโลแคลลอรี',
        calorie: '630',
        price: 40,
        img: '8-eggnoodletomyumnamtok.jpg'),
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
                                    'ร้านก๋วยเตี๋ยวตั้งเตาฮะ',
                                    style: GoogleFonts.sarabun(
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
                                  style: GoogleFonts.sarabun(
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
                    style: GoogleFonts.sarabun(
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
                                      fontWeight: FontWeight.bold),
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
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'ข้อมูลจาก : USDA FoodData Central',
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      color: const Color.fromARGB(255, 4, 92, 143),
                                      fontWeight: FontWeight.bold),
                                )
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
