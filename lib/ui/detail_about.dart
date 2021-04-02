import 'package:flutter/material.dart';

class DetailMenu extends StatefulWidget {
  DetailMenu({Key key, this.name, this.deskripstion, this.image})
      : super(key: key);
  final String name;
  final String deskripstion;
  final String image;
  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.name}"),
        backgroundColor: Colors.lightGreen[400],
      ),
      backgroundColor: Colors.lightGreen[200],
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimages/" + widget.image)
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff03a9f4), const Color(0xff01579b)],
                ),
              ),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightGreen[400],
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.deskripstion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
