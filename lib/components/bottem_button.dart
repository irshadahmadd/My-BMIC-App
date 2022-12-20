import 'package:flutter/material.dart';

import '../canstants/canstants.dart';
class BottemButton extends StatelessWidget {
  BottemButton({@required this.buttontitle,@required this.ontap});
  final Function ontap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: const BoxDecoration(
            color: kactiveCardColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.only(top: 10),
        child:  Center(
            child: Text(
              buttontitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
        ),
      ),
    );
  }
}