import 'package:hybrid2/hybrid2.dart';
import 'dart:io';



void main(List<String> arguments) {
  

  for(String arg in arguments){
    final lucky = Lucky();
    arg = arg[0].toUpperCase() + arg.substring(1);
    print("Hello $arg, your lucky number is ${lucky.randInt}");
  }

}
