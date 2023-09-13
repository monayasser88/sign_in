import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(TREES());
}

class TREES extends StatelessWidget {
  const TREES({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
