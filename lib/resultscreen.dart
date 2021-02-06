import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  ConfettiController _controllerCenter;
  @override
  void initState() {
    _controllerCenter =  ConfettiController(duration: const Duration(seconds: 5));
    super.initState();
    _controllerCenter.play();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    // _controllerCenterRight.dispose();
    // _controllerCenterLeft.dispose();
    // _controllerTopCenter.dispose();
    // _controllerBottomCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: new Container(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Text("You Have Made it !",
                      style: TextStyle(color: Colors.black, fontSize: 40.0))),
              Container(
                child: ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirectionality: BlastDirectionality
                      .explosive, // don't specify a direction, blast randomly
                  shouldLoop:
                      true, // start again as soon as the animation is finished
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.purple
                  ], // manually specify the colors to be used
                ),
              ),
              Image.asset("assets/congo.png"),
              Container(
                  alignment: Alignment.center,
                  child: Text("Congratulations !!",
                      style: TextStyle(color: Colors.black, fontSize: 40.0))),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/medal.png",height: 100,width: 100,),
                    Text("10 pts earned!",style: TextStyle(fontSize: 30.0),),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/rank.png",height: 100,width: 100,),
                    Text("Rank - 70 ",style: TextStyle(fontSize: 30.0),),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/8,
                  child: RaisedButton(
                    color: Colors.redAccent[400],
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "Back To Home",
                      style: TextStyle(color: Colors.white,fontSize: 20.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
