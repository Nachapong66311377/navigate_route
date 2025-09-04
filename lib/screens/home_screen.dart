import 'package:flutter/material.dart';
import 'detail_screen.dart';  // อย่าลืม import DetailScreen
import 'third_screen.dart';   // อย่าลืม import ThirdScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String result = ''; // เก็บค่าผลลัพธ์ที่ได้รับจาก ThirdScreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('หน้าหลัก')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // ไปที่ DetailScreen
                print("ไปที่หน้า DetailScreen"); // ข้อมูลเมื่อไปที่หน้า DetailScreen
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'id': 'ARG-789',
                    'title': 'ข้อมูลจาก HomeScreen',
                  },
                );
              },
              child: const Text('ไปยังหน้ารายละเอียด'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ส่งข้อมูลไปยัง ThirdScreen และรอผลลัพธ์กลับ
                print("ไปที่หน้า ThirdScreen"); // ข้อมูลเมื่อไปที่หน้า ThirdScreen
                Navigator.pushNamed(context, ThirdScreen.routeName, arguments: {
                  'id': 'ARG-123',
                  'title': 'ข้อมูลจาก HomeScreen',
                }).then((result) {
                  // รับผลลัพธ์จาก ThirdScreen หลังจากที่มัน pop กลับมา
                  if (result != null) {
                    setState(() {
                      this.result = result.toString();
                    });
                    print("กลับมาที่ HomeScreen: $result"); // ข้อมูลเมื่อกลับมาที่ HomeScreen
                  }
                });
              },
              child: const Text('ไปยังหน้าที่ 3'),
            ),
            const SizedBox(height: 20),
            Text(
              'ผลลัพธ์จากหน้าที่ 3: $result', // แสดงผลลัพธ์ที่ได้รับ
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
