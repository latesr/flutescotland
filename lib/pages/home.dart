import 'package:flutter/material.dart';

import './page.dart';

class Home extends Page {
  const Home(String title) : super(title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/strathallan.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
