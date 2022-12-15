import 'package:bmi_calc_by_irshad/icons_contents.dart';
import 'package:bmi_calc_by_irshad/reusible_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

const activeCardColor = Color(0xff2b0202);
const inactiveCardColor = Color(0xffe5a930);

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactiveCardColor;
  Color femalecardcolor = activeCardColor;
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("BMI Calculator by Irshad"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusibleCard(
                  colour: selectedGender == Gender.male
                      ? inactiveCardColor
                      : activeCardColor,
                  onpress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });                  },
                  cardChild: const IconContents(
                    iconsContents: Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    title: "Male",
                  ),
                ),
              ),
              Expanded(
                child: ReusibleCard(
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? inactiveCardColor
                      : activeCardColor,
                    cardChild: const IconContents(
                      iconsContents: Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      title: "Female",
                    ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusibleCard(
                colour: const Color(0xff2b0202), cardChild: Container()),
          ),
          Row(
            children: [
              Expanded(
                child: ReusibleCard(
                    colour: const Color(0xff2b0202), cardChild: Container()),
              ),
              Expanded(
                child: ReusibleCard(
                    colour: const Color(0xff2b0202), cardChild: Container()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
