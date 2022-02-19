import 'package:bmi_calculator/screens/input-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: inputPage(),
    );
  }
}
