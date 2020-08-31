import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 24.0,
      fillColor: kActiveCardColor,
      shape: CircleBorder(),
      constraints: BoxConstraints(
        maxWidth: 56.0,
        maxHeight: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
