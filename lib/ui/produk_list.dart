import 'package:flutter/material.dart';
import 'detail_produk.dart';

class produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tiensi Herbal Shop")),
      backgroundColor: Colors.lightGreen[300],
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(3.0, 20.0, 3.0, 20.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Chitin Chitosan Tiensi",
                  deskription:
                      "Obat penurun berat badan. selain itu obat ini juga membantu menyembuhkan diabetes, mengurangi gula dan menghilang racun",
                  price: 465000,
                  image: "chitin.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Chitin Chitosan Tiensi",
                deskription: "Tiensi Chitosan 1 botol isi 100 kapsul",
                price: 465000,
                image: "chitin.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Muncord Tiensi",
                  deskription:
                      " Obat untuk daya tahan tubuh,meningkatkan fungsi seksual,mengatasi berbagai masalah pernafasan,meningkatkan imunitas dan mengoptimalkan kinerja organ.",
                  price: 500000,
                  image: "muncord.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "Muncord Tiensi",
                deskription: "Tiensi Muncord 1 botol isi 100 kapsul..",
                price: 500000,
                image: "muncord.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Renuves Tiensi",
                  deskription:
                      "Membantu mengurangi lemak jahat,sebagai antioksidan,mencegah sel kanker,Membantu sel tubuh yang kekuranfan oksigen,dan dijadikan masker membantu kulit menjadi glowing",
                  price: 588000,
                  image: "Renuves.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Renuves Tiensi",
                deskription: "Tiensi Renuves 1 botol isi 150 kapsul",
                price: 588000,
                image: "Renuves.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Sprilulina Tiensi",
                  deskription:
                      "Sprilulina cocok untuk dijadikan masker wajah dengan manfaatnya untuk mengecangkan kulit wajah, menghilangkan jerawat,mencerahkan kulit,mengecilkan pori-pori wajah dan antioksidan bagi wajah",
                  price: 349000,
                  image: "sprilulina.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "Sprilulina Tiensl",
                deskription: "Sprilulina Tiensi 1 botol isi 100 kapsul",
                price: 349000,
                image: "sprilulina.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Vitalin Tiensi",
                  deskription:
                      "Vitaline cocok untuk dijadikan masker wajah dengan manfaat untuk mencerahkan kulit,memperhalus tekstur wajah,menghilangkan noda bekas jerawat,flek hitam,mengatasi kulit kering,mengencangkan kulit dan mencegah radikal bebas",
                  price: 346000,
                  image: "vitaline.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Vitalin Tiensi",
                deskription: "Vialin Tiensi isi 30 kapsul",
                price: 346000,
                image: "vitaline.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.deskription, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String deskription;
  final int price;
  final String image;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen[200],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 150,
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
                        )),
                    Text(this.deskription),
                    Text(
                      "Harga: " + this.price.toString(),
                      style: TextStyle(color: Colors.lightGreen.shade900),
                    ),
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
