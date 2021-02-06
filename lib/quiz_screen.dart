import 'package:dharma_mania/resultscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuizScreen extends StatefulWidget {
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool showvalue1 = false;
  bool showvalue2 = false;
  bool showvalue3 = false;
  bool showvalue4 = false;
  bool checkOption = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // header container
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
            // TExt question container
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0, left: 25.0),
              child: Text(
                "Ques 1 of 10 Completed",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            // Progress bar container
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

            // Quiz Box Container
            Container(
              margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              padding: EdgeInsets.all(18.0),
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
              child: Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Column(
                  children: [
                    Text(
                      "Q1. Ganesha has a face which symbolise which animal ?",
                      style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.showvalue1,
                          onChanged: (bool value) {
                            if (showvalue1 == false) {
                              setState(() {
                                this.showvalue2 = false;
                                this.showvalue3 = false;
                                this.showvalue4 = false;
                                this.showvalue1 = value;
                                print(showvalue1);
                              });
                            }
                          },
                        ),
                        Text("An Elephant"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.showvalue2,
                          onChanged: (bool value) {
                            if (showvalue2 == false) {
                              setState(() {
                                this.showvalue1 = false;
                                this.showvalue3 = false;
                                this.showvalue4 = false;
                                this.showvalue2 = value;
                                print(showvalue2);
                              });
                            }
                          },
                        ),
                        Text("A Horse"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.showvalue3,
                          onChanged: (bool value) {
                            if (showvalue3 == false) {
                              setState(() {
                                this.showvalue2 = false;
                                this.showvalue1 = false;
                                this.showvalue4 = false;
                                this.showvalue3 = value;
                                print(showvalue1);
                              });
                            }
                          },
                        ),
                        Text("A Mouse"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.showvalue4,
                          onChanged: (bool value) {
                            if (showvalue4 == false) {
                              setState(() {
                                this.showvalue2 = false;
                                this.showvalue3 = false;
                                this.showvalue1 = false;
                                this.showvalue4 = value;
                                print(showvalue4);
                              });
                            }
                          },
                        ),
                        Text("A Cat"),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.deepOrange,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          print("Button Clicked");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Previous and next button container
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.lightBlue[900],
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      print("Button Clicked");
                    },
                    child: Text(
                      "Previous",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text("--------------"),
                  RaisedButton(
                    color: Colors.green,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      print("Button Clicked");
                      //temprary for checkin flow
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ResultScreen()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
