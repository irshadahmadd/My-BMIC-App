import 'package:bmi_calc_by_irshad/canstants/canstants.dart';
import 'package:bmi_calc_by_irshad/components/bottem_button.dart';
import 'package:bmi_calc_by_irshad/components/reusible_card.dart';
import 'package:flutter/material.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key, this.bmiresult,this.resultstext,this.interpretation}) : super(key: key);
  final String bmiresult;
  final String resultstext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "Your Result",
                  style: ktitletextstyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusibleCard(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text(
                    resultstext,
                      style: kresulttextstyle,
                    ),
                    Text(
                      bmiresult,
                      style: kBMItextstyle,
                    ),
                    Text(
                     interpretation,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottemButton(
              ontap: () {
                Navigator.pushNamed(context, "/frist");
              },
              buttontitle: "Re-Calculate",
            ),
          ],
        ));
  }
}
