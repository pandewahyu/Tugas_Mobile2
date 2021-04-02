import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  DetailProduk(
      {Key key, this.name, this.deskription, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String deskription;
  final int price;
  final String image;
  final int star;
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star_border_outlined,
        size: 20,
        color: Colors.yellow[400],
      ));
    }

    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.name}"),
        backgroundColor: Colors.lightGreen[600],
      ),
      backgroundColor: Colors.lightGreen[300],
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
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                  new Container(
                    child: new Text(
                      "Rp. " + this.widget.price.toString(),
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
