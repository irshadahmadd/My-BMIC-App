import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
 final int height;
  final int weight;
  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  double _bmi;
  String getResults(){
    if(_bmi>=30) {
      return "Obeous";
    } else if(_bmi>=25) {
      return "Over Weight";
    } else if(_bmi>=22) {
      return "Normal";
    } else if(_bmi<=20){
      return "Under Weight";
    }
  }
  String getInterpretation(){
    if(_bmi>=30) {
      return "Your weight is too much high it can cause many diseases";
    } else if(_bmi>=25) {
      return "try to eat less and do exercise daily";
    } else if(_bmi>=22) {
      return "Good your weight is according to your age ";
    } else if(_bmi<20){
       return "Your weight is low try to eat more";
    }
  }
}