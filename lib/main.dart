import 'package:flutter/material.dart';
import 'dasboard_aplikasi.dart' as dashboard;

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.lightGreen[900],
    ),
    title: "tab bar",
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller; //widget untuk tabbar
  @override
  void initState() {
    controller = new TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new dashboard.dashboard(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.lightGreen[400],
        child: new TabBar(controller: controller, tabs: <Widget>[
          // widget tabs biar bisa ngisiin isi tabnya
          new Tab(icon: new Icon(Icons.menu_open_rounded)),
        ]),
      ),
    );
  }
}
