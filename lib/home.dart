import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.cyanAccent,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 30.0),
                child: GestureDetector(
                    onTap: () {
                      print("clicked notification");
                    },
                    child: Icon(
                      Icons.notifications,
                      size: 35.0,
                    ))),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.0,
                        margin: EdgeInsets.only(left: 20.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.person_sharp,
                              size: 30.0,
                            ),
                            Text(
                              "Amrita Shukla",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.8,
                                margin: EdgeInsets.only(left: 20.0, top: 30.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.flag_outlined,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "150 pts",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.8,
                                margin: EdgeInsets.only(left: 20.0, top: 10.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0),
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.flag,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Ranking - 76",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30.0, top: 30.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70.0),
                              border: Border.all(color: Colors.white, width: 3.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10.0,
                                    spreadRadius: 1.0),
                              ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset(
                                "assets/profile1.png",
                                height: 120.0,
                                width: 120.0,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0, top: 10.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Progress Completed",
                            style: TextStyle(),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      padding: EdgeInsets.all(10.0),
                      child: new LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 1.5,
                        lineHeight: 14.0,
                        percent: 0.5,
                        center: Text(
                          "50.0%",
                          style: new TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        // trailing: Icon(Icons.mood),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 5.0),
                  child: Text(
                    "Available Religions In India",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                  )),
              Divider(
                color: Colors.black26,
                indent: 20.0,
                endIndent: 20.0,
                thickness: 1.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    return Container(
                      child: Card(
                        color: Colors.blue,
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ));
  }
}
