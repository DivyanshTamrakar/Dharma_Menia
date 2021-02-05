import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuizScreen extends StatefulWidget {
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 3.0, //extend the shadow
                  offset: Offset(
                    1.0, // Move to right 10  horizontally
                    1.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              border: Border.all(color: Colors.blue, width: 4.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(5, 30.0, 5, 0),
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Brahmins",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 45.0,
                        child: Icon(
                          Icons.timer,
                          size: 35.0,
                          color: Colors.blue,
                        )),
                    Text(
                      "5:46",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30.0, left: 25.0),
            child: Text(
              "Ques 1 of 10 Completed",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, top: 15.0),
            padding: EdgeInsets.all(2.0),
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width / 1.1,
              lineHeight: 40.0,
              percent: 0.2,
              center: Text(
                "10.0%",
                style:
                    new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              // trailing: Icon(Icons.mood),
              linearStrokeCap: LinearStrokeCap.butt,
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 3.0, //extend the shadow
                  offset: Offset(
                    1.0, // Move to right 10  horizontally
                    1.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.blue, width: 5.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text("Q1. Ganesha has a face which symbolise which animal ?",style: TextStyle(fontSize: 15.0),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
