import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail'; // กำหนดชื่อ route

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ดึง arguments ที่ส่งมาจาก HomeScreen
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    final String itemId = args?['id'] ?? 'ไม่มี ID';
    final String pageTitle = args?['title'] ?? 'รายละเอียด';

    // แสดงข้อมูลใน console
    print("ไปที่หน้า DetailScreen: itemId = $itemId, title = $pageTitle");

    return Scaffold(
      appBar: AppBar(
        title: Text('ไอเท็ม: $itemId'), // ใช้ itemId ใน appBar
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
                Navigator.pop(context); // ปุ่มย้อนกลับ
              },
              child: const Text('ย้อนกลับ'),
            ),
          ],
        ),
      ),
    );
  }
}
