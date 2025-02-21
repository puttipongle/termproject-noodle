import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/calorie_calculator.dart';

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

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
];
String? selectedValue;

class _CalculatorcalState extends State<Calculatorcal> {
  String selectedMenuId = "ไม่ใส่น้ำซุป";
  String selectedNoodle = "ไม่ใส่เส้น";
  String selectedMeat = "ไม่ใส่เนื้อ";
  String selectedMeatball = "ไม่ใส่ลูกชิ้น";
  int totalCalories = 0; // ตัวแปรเก็บแคลอรีที่คำนวณได้

  List<String> menuItems = CalorieCalculator.mockMenu.keys.toList();
  List<String> noodleOptions = CalorieCalculator.mockNoodles.keys.toList();
  List<String> MeatOptions = CalorieCalculator.mockMeat.keys.toList();
  List<String> MeatballOptions = CalorieCalculator.mockMeatballs.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 26, 30),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/noodle.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                //ส่วนของการเลือกเส้น
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Row(
                                        children: [
                                          const Icon(
                                            Icons.menu_open,
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'เลือกเส้น',
                                              style: GoogleFonts.sarabun(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: noodleOptions
                                          .map((noodle) =>
                                              DropdownMenuItem<String>(
                                                value: noodle,
                                                child: Text(
                                                  noodle,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedNoodle,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          setState(() {
                                            selectedNoodle = value;
                                          });
                                        }
                                      },
                                      buttonStyleData: ButtonStyleData(
                                        height: 50,
                                        width: 320,
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.grey,
                                        ),
                                        elevation: 2,
                                      ),
                                      iconStyleData: const IconStyleData(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                        iconSize: 14,
                                        iconEnabledColor: Colors.black,
                                        iconDisabledColor: Colors.grey,
                                      ),
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 200,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Colors.grey,
                                        ),
                                        offset: const Offset(0, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(40),
                                          thickness:
                                              WidgetStateProperty.all<double>(
                                                  6),
                                          thumbVisibility:
                                              WidgetStateProperty.all<bool>(
                                                  true),
                                        ),
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 14, right: 14),
                                      ),
                                    ),
                                  ),
                                ),
                                //ส่วนของการเลือกน้ำซุป
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Row(
                                        children: [
                                          const Icon(
                                            Icons.menu_open,
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'เลือกน้ำซุป',
                                              style: GoogleFonts.sarabun(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: menuItems
                                          .map((String menuItems) =>
                                              DropdownMenuItem<String>(
                                                value: menuItems,
                                                child: Text(
                                                  menuItems,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedMenuId,
                                      onChanged: (String? value) {
                                        if (value != null) {
                                          setState(() {
                                            selectedMenuId = value;
                                          });
                                        }
                                      },
                                      buttonStyleData: ButtonStyleData(
                                        height: 50,
                                        width: 320,
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.grey,
                                        ),
                                        elevation: 2,
                                      ),
                                      iconStyleData: const IconStyleData(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                        iconSize: 14,
                                        iconEnabledColor: Colors.black,
                                        iconDisabledColor: Colors.grey,
                                      ),
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 200,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Colors.grey,
                                        ),
                                        offset: const Offset(0, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(40),
                                          thickness:
                                              WidgetStateProperty.all<double>(
                                                  6),
                                          thumbVisibility:
                                              WidgetStateProperty.all<bool>(
                                                  true),
                                        ),
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 14, right: 14),
                                      ),
                                    ),
                                  ),
                                ),
                                //ส่วนของการเลือกเนื้อสัตว์
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Row(
                                        children: [
                                          const Icon(
                                            Icons.menu_open,
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'เลือกเนื้อสัตว์',
                                              style: GoogleFonts.sarabun(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: MeatOptions.map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )).toList(),
                                      value: selectedMeat,
                                      onChanged: (value) {
                                        if (value != null) {
                                          setState(() {
                                            selectedMeat = value;
                                          });
                                        }
                                      },
                                      buttonStyleData: ButtonStyleData(
                                        height: 50,
                                        width: 320,
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.grey,
                                        ),
                                        elevation: 2,
                                      ),
                                      iconStyleData: const IconStyleData(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                        iconSize: 14,
                                        iconEnabledColor: Colors.black,
                                        iconDisabledColor: Colors.grey,
                                      ),
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 200,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Colors.grey,
                                        ),
                                        offset: const Offset(0, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(40),
                                          thickness:
                                              WidgetStateProperty.all<double>(
                                                  6),
                                          thumbVisibility:
                                              WidgetStateProperty.all<bool>(
                                                  true),
                                        ),
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 14, right: 14),
                                      ),
                                    ),
                                  ),
                                ),
                                //ส่วนของการเลือกลูกชิ้น
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Row(
                                        children: [
                                          const Icon(
                                            Icons.menu_open,
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'เลือกลูกชิ้น',
                                              style: GoogleFonts.sarabun(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: MeatballOptions.map(
                                          (String item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )).toList(),
                                      value: selectedMeatball,
                                      onChanged: (value) {
                                        if (value != null) {
                                          setState(() {
                                            selectedMeatball = value;
                                          });
                                        }
                                      },
                                      buttonStyleData: ButtonStyleData(
                                        height: 50,
                                        width: 320,
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.grey,
                                        ),
                                        elevation: 2,
                                      ),
                                      iconStyleData: const IconStyleData(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                        iconSize: 14,
                                        iconEnabledColor: Colors.black,
                                        iconDisabledColor: Colors.grey,
                                      ),
                                      dropdownStyleData: DropdownStyleData(
                                        maxHeight: 200,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Colors.grey,
                                        ),
                                        offset: const Offset(0, 0),
                                        scrollbarTheme: ScrollbarThemeData(
                                          radius: const Radius.circular(40),
                                          thickness:
                                              WidgetStateProperty.all<double>(
                                                  6),
                                          thumbVisibility:
                                              WidgetStateProperty.all<bool>(
                                                  true),
                                        ),
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 14, right: 14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                ResultSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ResultSection() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'ส่วนประกอบที่เลือก',
              style: GoogleFonts.sarabun(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none, // ลบเส้นขีดใต้
              ),
            ),
          ),
          const SizedBox(height: 2),
          Container(
            //แสดงส่วนประกอบ
            color: const Color(0xFFDCD6D6).withOpacity(0.8),
            child: TextField(
              controller: TextEditingController(
                text: "เมนูที่เลือก: $selectedMenuId\n"
                    "เนื้อที่เลือก: $selectedMeat\n"
                    "ลูกชิ้นที่เลือก: $selectedMeatball\n"
                    "เส้นที่เลือก: $selectedNoodle",
              ),
              maxLines: null, // ให้สามารถแสดงข้อความหลายบรรทัด
              readOnly: true, // ไม่สามารถแก้ไขข้อความได้
              decoration: InputDecoration(
                border: InputBorder.none, // ไม่มีขอบ
                hintText: 'กรุณาเลือกเมนู, เนื้อ, ลูกชิ้น และเส้น',
              ),
            ),
          ),
          const SizedBox(height: 2),
          Container(
            //แสดงผลลัพธ์
            height: 50,
            width: 200,
            color: const Color(0xFFDCD6D6).withOpacity(0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'แคลอรีทั้งหมด:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height:2),
                Text(
                  '$totalCalories kcal', // แสดงแคลอรีที่คำนวณได้
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          ElevatedButton(
            onPressed: calculateCalories,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 52, 188, 43),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              minimumSize: const Size(150, 60),
            ),
            child: Text('คำนวณ',
                style: GoogleFonts.sarabun(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                )),
          ),
        ],
      ),
    );
  }

  void calculateCalories() {
    final totalCalories = CalorieCalculator.calculate(
      selectedMenuId,
      selectedNoodle,
      selectedMeat,
      selectedMeatball,
    );

    setState(() {
      this.totalCalories = totalCalories;
    });
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          color: const Color.fromARGB(255, 185, 186, 185)
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
          padding: EdgeInsets.all(5),
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 45, 45, 45).withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'เครื่องคำนวณแคลลอรี',
                  style: GoogleFonts.sriracha(
                    fontSize: 30,
                    color: Colors.white,
                    decoration: TextDecoration.none, // ลบเส้นขีดใต้
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
