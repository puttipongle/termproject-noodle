class CalorieCalculator {
  static final Map<String, int> mockMenu = {
  "ไม่ใส่น้ำซุป":0,
  "ต้มยำ": 80,
  "น้ำตก": 100,
  "น้ำใส": 40,
  "เย็นตาโฟ": 90,
  "ข้าวซอย": 250,
};

  static final Map<String, int> mockMeat = {
    "ไม่ใส่เนื้อ": 0,
    "หมูแดง": 200,
    "หมูสับ": 150,
    "หมูนุ่ม": 150,
    "หมูตุ๋น":250,
    "เนื้อวัว": 250,
    "น่องไก่": 220,
  };

  static final Map<String, int> mockMeatballs = {
    "ไม่ใส่ลูกชิ้น": 0,
    "ลูกชิ้นหมู": 150,
    "ลูกชิ้นเนื้อ": 180,
    "ลูกชิ้นปลา": 180,
    "ลูกชิ้นกุ้ง": 180,
    "เกี๊ยวหมู": 200,
  };

  static final Map<String, int> mockNoodles = {
    "ไม่ใส่เส้น": 0,
    "เส้นหมี่เหลือง": 250,
    "เส้นหมี่ขาว": 138 ,
    "เส้นใหญ่": 180,
    "เส้นกลาง": 160,
    "เส้นเล็ก": 140,
    "วุ้นเส้น": 100,
    "เส้นข้าวซอย": 240,
    "เส้นบะหมี่กึ่งสำเร็จรูป":250 ,
  };

  static int calculate(
    String selectedMenu, String selectedNoodle, String selectedMeat, String selectedMeatball) {
    // ดึงค่า Base Calorie จากเมนูที่เลือก
    final baseCalorie = mockMenu[selectedMenu] ?? 0;
    

    // คำนวณแคลอรีจากเส้น
    final noodleCalorie = mockNoodles[selectedNoodle] ?? 0;

    // คำนวณแคลอรีจากเนื้อ
    final meatCalorie = mockMeat[selectedMeat] ?? 0;

    // คำนวณแคลอรีจากลูกชิ้น
    final meatballCalorie = mockMeatballs[selectedMeatball] ?? 0;

    // รวมแคลอรีทั้งหมด
    return baseCalorie + noodleCalorie + meatCalorie + meatballCalorie;
  }
}