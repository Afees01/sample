import 'package:flutter/material.dart';
import 'package:smaole/table_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TableScreen(),
    );
  }
}