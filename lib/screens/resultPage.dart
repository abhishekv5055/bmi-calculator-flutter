import 'package:bmi_calculator/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'file:///E:/FLUTTER-COURSE/bmi-calculator-flutter/lib/component/bottomButton.dart';
import 'file:///E:/FLUTTER-COURSE/bmi-calculator-flutter/lib/component/reusableCard.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmiResult;
  final String interpretation;

  ResultPage(
      {@required this.result,
      @required this.bmiResult,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kResultTopTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colours: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: kConditionTextStyle,
                  ),
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80.0,
            color: kBottomContainerColor,
            child: BottomButton(
              title: 'RE-CALCULATE BMI',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
