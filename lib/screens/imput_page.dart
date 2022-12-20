import 'package:bmi_calc_by_irshad/canstants/canstants.dart';
import 'package:bmi_calc_by_irshad/components/bottem_button.dart';
import 'package:bmi_calc_by_irshad/components/icons_contents.dart';
import 'package:bmi_calc_by_irshad/components/reusible_card.dart';
import 'package:bmi_calc_by_irshad/components/round_icon_button.dart';
import 'package:bmi_calc_by_irshad/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc_by_irshad/calculator_brain.dart';
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = kinactiveCardColor;
  Color femalecardcolor = kactiveCardColor;
  Gender selectedGender;
  int height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReusibleCard(
                  colour: selectedGender == Gender.male
                      ? kinactiveCardColor
                      : kactiveCardColor,
                  onpress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
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
                      ? kinactiveCardColor
                      : kactiveCardColor,
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
              colour: const Color(0xff2b0202),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 1,
                  ),
                  const Text(
                    "Height",
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: boltextstyle,
                      ),
                      const Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.deepOrangeAccent,
                      activeTrackColor: kinactiveCardColor,
                      inactiveTrackColor: Colors.white,
                      overlayColor: Colors.greenAccent,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReusibleCard(
                    colour: const Color(0xff2b0202),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: boltextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconMyButton(
                              buttonColor: kButtonColor,
                              buttonIcon: const FaIcon(
                                FontAwesomeIcons.minus,
                              ),
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconMyButton(
                              buttonColor: kButtonColor,
                              buttonIcon: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                child: ReusibleCard(
                    colour: const Color(0xff2b0202),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: boltextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconMyButton(
                              buttonColor: kButtonColor,
                              buttonIcon: const FaIcon(
                                FontAwesomeIcons.minus,
                              ),
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconMyButton(
                              buttonColor: kButtonColor,
                              buttonIcon: const FaIcon(
                                FontAwesomeIcons.plus,
                              ),
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
          BottemButton(ontap: (){
           CalculatorBrain calc=CalculatorBrain(weight: weight, height: height);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
              bmiresult:calc.calculateBMI() ,
              resultstext: calc.getResults(),
              interpretation: calc.getInterpretation(),
            )));
          },
          buttontitle: "Calculate",
          ),

        ],
      ),
    );
  }
}

