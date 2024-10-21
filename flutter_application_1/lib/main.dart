import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cyra project',
      home: HomePage(),
    );
  }
}
