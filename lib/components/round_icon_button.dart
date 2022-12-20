import 'package:flutter/material.dart';
class RoundIconMyButton extends StatelessWidget {
  const RoundIconMyButton(
      {Key key, this.buttonColor, this.buttonIcon, this.onpress})
      : super(key: key);
  final Color buttonColor;
  final Widget buttonIcon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: const CircleBorder(),
      fillColor: buttonColor,
      onPressed: onpress,
      child: buttonIcon,
    );
  }
}