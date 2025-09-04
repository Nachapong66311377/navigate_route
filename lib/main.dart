import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/', // เริ่มต้นที่ HomeScreen
      routes: {
        '/': (context) => const HomeScreen(), // หน้า HomeScreen
        DetailScreen.routeName: (context) => const DetailScreen(), // หน้า DetailScreen
        ThirdScreen.routeName: (context) => const ThirdScreen(), // หน้า ThirdScreen
      },
    );
  }
}
