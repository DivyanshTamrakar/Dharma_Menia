import 'package:dharma_mania/quiz_screen.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class CardInformation extends StatefulWidget {
  final index_nm;

  const CardInformation({Key key, this.index_nm}) : super(key: key);

  _CardInformationState createState() => _CardInformationState();
}

class _CardInformationState extends State<CardInformation> {
  bool button_one = false;
  bool button_two = false;
  String longText =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.";

  @override
  void initState() {
    super.initState();
    print(widget.index_nm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0.0, actions: [
        SizedBox(
            width: 50.0,
            child: GestureDetector(
                onTap: () {
                  print("CLicked Favorite");
                },
                child: Icon(Icons.favorite_border_outlined))),
        SizedBox(
            width: 50.0,
            child: GestureDetector(
                onTap: () {
                  print("CLicked Share");
                },
                child: Icon(Icons.share))),
      ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset("assets/shiv.png"),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/namaste.png"),
                  Text(
                    "Hindusim",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    color: Colors.deepOrange,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "Learn More",
                      style: TextStyle(color: Colors.white),
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
            Container(

              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      child: RaisedButton(
                        color: button_one ? Colors.lightBlueAccent : Colors.grey,
                        onPressed: () {

                          setState(() {
                            button_one = !button_one;
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => QuizScreen()));
                        },
                        child: Text("Culture"),
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      child: RaisedButton(
                        color: button_two ? Colors.lightBlueAccent : Colors.grey,
                        onPressed: () {
                          setState(() {
                            button_two = !button_two;
                          });
                        },
                        child: Text("Festival"),
                      )),
                ],
              ),
            ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10.0,left: 20.0),
            child: Text("Module Available ",style: TextStyle(fontWeight: FontWeight.bold),)),
         
          ],
        ),
      ),
    );
  }
}
