import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const routeName = '/third'; // กำหนดชื่อ route

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ดึง arguments ที่ส่งมาจาก HomeScreen
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    final String itemId = args?['id'] ?? 'ไม่มี ID';
    final String pageTitle = args?['title'] ?? 'รายละเอียดเพิ่มเติม';

    // แสดงข้อมูลใน console
    print("ไปที่หน้า ThirdScreen: itemId = $itemId, title = $pageTitle");

    return Scaffold(
      appBar: AppBar(
        title: Text('ไอเท็มที่ 3: $itemId'), // ใช้ itemId ใน appBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Item id: $itemId'), // แสดง id
            Text('Detail: $pageTitle'), // แสดง title
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ส่งค่าผลลัพธ์กลับไปยัง HomeScreen
                print("ส่งข้อมูลกลับไปที่ HomeScreen"); // ข้อมูลเมื่อกดปุ่มส่งข้อมูลกลับ
                Navigator.pop(context, 'ค่าจาก ThirdScreen');
              },
              child: const Text('ส่งข้อมูลกลับไปที่ HomeScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
