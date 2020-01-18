import 'package:flutter/material.dart';

import './page.dart';

final String coverString =
    "One week of world class flute tuition in Perthshire, Scotland Dates: 26th July - 1st August, 2020"
        .toUpperCase();

class Home extends Page {
  const Home(String title) : super(title);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          constraints: BoxConstraints(minHeight: 700.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/strathallan.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  coverString,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonMinWidth: 180.0,
                  buttonHeight: 50.0,
                  buttonPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Text("Book Now".toUpperCase()),
                      color: Colors.red,
                      onPressed: () => {},
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Text("Auditor Tickets".toUpperCase()),
                      color: Colors.green,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
