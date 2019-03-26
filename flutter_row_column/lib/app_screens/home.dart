import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Razorshi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Prozzwal Talukder",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Sylhet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Engineering College",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ],
                ),
                ImageAsset(),
                Button()
              ],
            )));
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/image.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Press Button",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          //elevation means arraised button 6.0 from back container
          onPressed: () {
            afterPress(context);
          }),
    );
  }

  void afterPress(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("After Press Button"),
      content: Text("Yes, It Works Successfully!!!"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          //builder is a function handler
          return alertDialog;
        });
  }
}
