
import 'package:flutter/material.dart';
import 'about_show.dart' as detail;

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Pande Wahyu"),
            accountEmail: Text("bagus4744@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/appimages"),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.lightGreen[600]), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            onTap: () {},
            title: Text("saya"),

            trailing: Icon(Icons.account_box),
          ),
          ListTile(
            onTap: () {},
            title: Text("setting"),
            trailing: Icon(Icons.settings_outlined),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  name: "about us",
                  deskripstion:
                      " Aplikasi ini merupakan aplikasi online shop yang menjual berbagai obat serta masker dari perusahaan Tiensi. Dalam aplikasi ini akan menampilkan daftar -daftar produk dari Tiensi beserta harganya.",
                  image: "about.png",
                ),
              ));
            },
            title: Text("help"),
            trailing: Icon(Icons.help_rounded),
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            onTap: () {},
            title: Text("notifikasi"),

            trailing: Icon(Icons.notification_important),
          ),
          ListTile(
            onTap: () {},
            title: Text("log out"),
            trailing: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
