import 'package:flutter/material.dart';
import 'package:smart_home/home_page.dart';

void main() {
  runApp(const SmarthHome());
}

class SmarthHome extends StatelessWidget {
  const SmarthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
