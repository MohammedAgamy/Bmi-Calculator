import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  double result;

  bool gander;

  int age;

  BmiResult({required this.result, required this.gander, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resulit"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Gander is: ${gander ? "Male" : "FeMale"}",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Text(
              "Result is: $result",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Text(
              "Age is: $age",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
