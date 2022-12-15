import 'package:flutter/material.dart';
class IconContents extends StatelessWidget {
  const IconContents({Key key,this.iconsContents,this.title }) : super(key: key);
  static const labelTextStyle=TextStyle(
      color: Colors.white,
      fontSize: 18
  );
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