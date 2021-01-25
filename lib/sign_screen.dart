import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SignScreen extends StatefulWidget {
  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0),
              ),
            ),
            Divider(
              indent: 20.0,
              color: Colors.black38,
              endIndent: 180.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0),
              child: Text(
                "To play the Religious of India , Login to Continue ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  // fontSize: 50.0
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png',
                alignment: Alignment.center,
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => HomeScreen()));
                        // signInusingGoogle();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Sign in with Google",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 35.0, left: 35.0),
                      child: Image.asset(
                        "assets/google_icon.png",
                        height: 35.0,
                        width: 35.0,
                      )),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        // signInusingFacebook();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Sign in with facebook",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 25.0, left: 35.0),
                      child: Image.asset(
                        "assets/facebook.png",
                        height: 35.0,
                        width: 35.0,
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "---------------------------  OR  ---------------------------",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: InkWell(
                      onTap: () {
                        // signInusingGuest();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Play As a Guest",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 45.0, left: 35.0),
                      child: Image.asset(
                        "assets/logo.png",
                        height: 35.0,
                        width: 35.0,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Terms & Condition Applied",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
