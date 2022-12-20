import 'package:bmi_calc_by_irshad/canstants/canstants.dart';
import 'package:flutter/material.dart';
class IconContents extends StatelessWidget {
  const IconContents({Key key,this.iconsContents,this.title }) : super(key: key);
  final String title;
  final Widget iconsContents;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconsContents,
        const SizedBox(height: 15.0,),
        Text(title,style: labelTextStyle)
      ],
    );
  }
}