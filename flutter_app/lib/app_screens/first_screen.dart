//Library which contains all material design
import 'dart:math';

import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(), //$string interpolation
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }


  //define this method which return integer value
  String generateLuckyNumber(){
    var random = Random();
    int luckyNumber = random.nextInt(10);

    return "Your Lucky Number is $luckyNumber";
  }
}