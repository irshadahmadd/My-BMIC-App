import 'package:bmi_calc_by_irshad/screens/imput_page.dart';
import 'package:bmi_calc_by_irshad/screens/results_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Irshad BMI Calculator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0E1020),
      ),
      initialRoute: '/frist',
      routes: {
        '/frist':(context) => const InputPage(),
        '/resultspage':(context) =>  ResultsPage(),

      },
    );
  }
}

