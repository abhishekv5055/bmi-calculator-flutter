import 'package:flutter/material.dart';

import '../constant.dart';

class IconPacket extends StatelessWidget {
  final IconData icon;
  final String label;

  IconPacket({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
