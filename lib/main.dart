import 'package:flutter/material.dart';

import 'screens/inputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D2136),
        accentColor: Color(0xFF1D2136),
        scaffoldBackgroundColor: Color(0xFF1D2136),
        backgroundColor: Color(0xFF1D2136),
      ),
      home: InputPage(),
    );
  }
}
