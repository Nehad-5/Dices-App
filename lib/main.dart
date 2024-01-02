import 'package:dices_app/dices.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DicesApp());
}

class DicesApp extends StatefulWidget {
  const DicesApp({super.key});

  @override
  State<DicesApp> createState() => _DicesAppState();
}

class _DicesAppState extends State<DicesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          shadowColor: Colors.black,
          title: const Text(
            "DicesApp",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: const Dices(),
        backgroundColor: Colors.red,
      ),
    );
  }
}
