//Library which contains all material design
import "package:flutter/material.dart";
import 'package:flutter_app/app_screens/first_screen.dart';


//main method(entry in application)
void main(){

  //runapp method inflet the widget and attach with screen
  //and also show what we pass the parameters 
  runApp(new MyFlutterApp());

}


//that widget will be return in this class will not contain any state
//and it will never change in future
class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //remove tag
      debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
          appBar: AppBar(title: Text("My First App Screen"),),
          body: FirstScreen()
        )
    );
  }

}