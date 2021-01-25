import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class CardInformation extends StatefulWidget {
  final index_nm;

  const CardInformation({Key key, this.index_nm}) : super(key: key);

  _CardInformationState createState() => _CardInformationState();
}

class _CardInformationState extends State<CardInformation> {
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
        SizedBox(width: 50.0, child: GestureDetector(
          onTap: () {
                  print("CLicked Share");
                },child: Icon(Icons.share))),
      ]),
      body: Column(
        children: [Image.asset("assets/shiv.png")],
      ),
    );
  }
}
