import 'package:flutter/material.dart';
const labelTextStyle =TextStyle(
  fontSize: 25.0,color:Colors.black,
);
const heightTextStyle = TextStyle(
fontSize: 50.0,
fontWeight: FontWeight.w900,
);
class IconContent extends StatelessWidget {
  IconContent({this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[
          Icon(
            icon,
            size:80.0,
          ),
          SizedBox(
            height:15.0,
          ),
          Text(label,style:labelTextStyle),


        ]
    );
  }
}
