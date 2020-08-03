
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class results_page extends StatelessWidget {

  final String bmiResult;

  final String resultText;
  final String interpretation;
  results_page({Key key, this.bmiResult, this.resultText, this.interpretation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('bmi calculator'),
        ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(child:Center(
            child: Text(
              'YOUR RESULT',
                style:kTitleTextStyle,
            ),
          ),
          ),
    ),
            Expanded(flex:6,
            child:Reusable_card(colour: kActiveCardColour,
            cardChild:Column(

              children:<Widget> [
                Text('Normal',
                style:kResultTextStyle),

                Text('18.3',
                  style:kBMITextStyle,

            ),
                Text("Your BMI results is quite low, you should eat more!",
                textAlign:TextAlign.center,
                style:kBodyTextStyle
                ),


              ],
            ),
            ),
            ),
          BottomButton(buttonTitle: "RE-CALCULATE",
              onTap:() {
                Navigator.pop(context);
              }
              )
        ]
      )

    );
  }
}
