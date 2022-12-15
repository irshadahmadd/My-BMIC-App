import 'dart:developer';

import 'package:flutter/material.dart';
class ReusibleCard extends StatelessWidget {
   const ReusibleCard({Key key, @required this.colour,this.onpress,this
       .cardChild}) : super
(key: key);
  final Color colour;
  final Function onpress;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        height: 200,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
