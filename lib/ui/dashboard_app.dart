import 'package:flutter/material.dart';
import 'drawer_app.dart' as Drawer;
import 'detail_about.dart' as detail;
import 'produk_list.dart' as produk;
import 'home.dart' as home;
import 'dart:ui';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightGreen[800],
      ),
      backgroundColor: Colors.lightGreen[400],
      drawer: Drawer.Menudrawer(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 20.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => produk.produk(),
              ));
            },
            child: ProductBox(name: "Produk Shop", image: "daftar.png"),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  name: "About us",
                  deskripstion:
                      " Aplikasi ini merupakan aplikasi online shop yang menjual berbagai obat serta masker dari perusahaan Tiensi. Dalam aplikasi ini akan menampilkan daftar -daftar produk dari Tiensi beserta harganya.",
                  image: "about.png",
                ),
              ));
            },
            child: ProductBox(name: "About us", image: "about.png"),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => home.Home(),
              ));
            },
            child: ProductBox(name: "Transaksi", image: "transaksi.png"),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.image}) : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen[600],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 200,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
