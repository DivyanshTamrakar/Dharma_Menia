import 'package:dharma_mania/quiz_screen.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class ListCardInformation extends StatefulWidget {
  _ListCardInformationState createState() => _ListCardInformationState();
}

class _ListCardInformationState extends State<ListCardInformation> {
  bool button_one = false;
  bool button_two = false;
  String longText =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 150.0,
            actions: [
              Column(
                children: [
                  SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: GestureDetector(
                          onTap: () {
                            print("CLicked Share");
                          },
                          child: Icon(Icons.share))),
                  SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: GestureDetector(
                          onTap: () {
                            print("CLicked Speaker");
                          },
                          child: Icon(Icons.volume_down))),
                  SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: GestureDetector(
                          onTap: () {
                            print("CLicked Favorite");
                          },
                          child: Icon(Icons.favorite_border_outlined))),
                ],
              ),
            ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset("assets/ganeshji.png"),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/brah.png",
                      height: 80.0,
                      width: 80.0,
                    ),
                    Text(
                      "Brahmins",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: RaisedButton(
                        color: Colors.lightBlue[900],
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => QuizScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 15.0,
                              color: Colors.blue,
                            ),
                            Text(
                              "Quiz",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(12.0),
                  child: ExpandableText(
                    longText,
                    expandText: 'show more',
                    collapseText: 'show less',
                    maxLines: 9,
                    linkColor: Colors.blue,
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.justify,
                  )),
              Divider(
                color: Colors.black,
                endIndent: 10.0,
                indent: 12.0,
              ),
              // Video Library.
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10.0,left: 20.0),
                  child: Text("Videos on Brahmins ",style: TextStyle(fontWeight: FontWeight.bold),)),
              // Gallery Container
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10.0,left: 20.0),
                  child: Text("Gallery",style: TextStyle(fontWeight: FontWeight.bold),)),

            ],
          ),
        ),
      ),
    );
  }
}
