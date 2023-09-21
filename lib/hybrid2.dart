import 'dart:math';
import 'dart:io';


class Lucky{
  late int _min;
  late int _max;
  int? randInt;

  Lucky() {
    String? envMin = Platform.environment['MIN'];
    String? envMax = Platform.environment['MAX'];

    if(envMin != null && envMax != null){
      _min = int.parse(envMin);
      _max = int.parse(envMax);
      randInt = Random().nextInt(_max - _min) + _min;

    } else {
      print("missing environment vars");
      return;
    }
  }
}