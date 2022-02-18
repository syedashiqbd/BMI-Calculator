import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  Colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Normal', style: kResultTextStyle),
                      Text('18.30', style: kBMITextStyle),
                      Text(
                        'Your BMI result is quite low, you should eat more!',
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
            Expanded(
                child: BottomButton(
                    buttonText: 'RE-CALCULATE',
                    onTap: () {
                      Navigator.pop(context);
                    }))
          ],
        ));
  }
}
