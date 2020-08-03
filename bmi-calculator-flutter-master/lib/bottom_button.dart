import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //thats how you navigate from page to page
        //i need to well document my code or i would be confuse all the time.
        //too much to read
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => results_page()));
      },
      child: Container(
        child: Center(child: Text('calculate',
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30, letterSpacing: 2
          ),


        ),
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}