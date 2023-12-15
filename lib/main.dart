import "package:flutter/material.dart";
import "app_calculator_widgets/app_calculator_mainscreen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainScreen(),
    );
  }
}