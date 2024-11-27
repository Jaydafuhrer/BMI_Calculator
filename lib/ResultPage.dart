import 'package:flutter/material.dart';
import 'RealPage.dart';
import 'bmifunctionality.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.BMI,required this.Interpretation,required this.Result});

  final String BMI;
  final String Result;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(10, 14, 33, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(10, 14, 33, 1),
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(padding: EdgeInsets.only(left: 20,top: 40),
                child: Text(
                  'YOUR RESULT',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: activecolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Result,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.greenAccent),
                    ),
                    Text(
                      BMI,
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      Interpretation,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                height: 80,
                width: 380,
                color: Color.fromRGBO(235, 21, 85, 1),
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(bottom: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
