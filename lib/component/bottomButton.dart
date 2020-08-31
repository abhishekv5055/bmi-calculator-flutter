import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  BottomButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onTap: onTap);
  }
}
