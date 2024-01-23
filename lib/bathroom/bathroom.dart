import 'package:uaspemmob/bathroom/handklaedi.dart';
import 'package:uaspemmob/bathroom/hreintvant.dart';
import 'package:uaspemmob/bathroom/karanavatni.dart';
import 'package:uaspemmob/bathroom/salerni.dart';
import 'package:uaspemmob/bathroom/sapuskattari.dart';
import 'package:uaspemmob/bathroom/sturtubotn.dart';
import 'package:uaspemmob/bathroom/stutujota.dart';
import 'package:uaspemmob/bathroom/vaskur.dart';
import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/shoppingcart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bathroom',
      home: Bathroom(),
    );
  }
}
class Bathroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(132, 161, 196, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Kategori()),
            );
          },
          color: Colors.black,
        ),
        title: Text(
          'BATHROOM',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Keranjang()),
              );
            },
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomCard(
                        imagePath: 'assets/shower.jpg',
                        title: 'HREINTVANT',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hreintvant()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/wastafel2.jpg',
                        title: 'VASKUR',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Vaskur()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomCard(
                        imagePath: 'assets/lobangair.jpeg',
                        title: 'STURTUBOTN',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sturtubotn()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/keran2.jpg',
                        title: 'KARANAVATNI',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Karavatni()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomCard(
                        imagePath: 'assets/toilet.jpeg',
                        title: 'SALERNI',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Salerni()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/tempatsabun.jpeg',
                        title: 'SÁPUSKATTARI',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sapuskattari()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoomCard(
                        imagePath: 'assets/hanger.jpeg',
                        title: 'HANDKLÆÐI',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hand()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/watergun.jpeg',
                        title: 'STUTUJÓTA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stutujota()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(232, 240, 250, 1.0),
    );
  }
}

class RoomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double cardWidth;
  final double cardHeight;
  final VoidCallback onTap;

  const RoomCard({
    required this.imagePath,
    required this.title,
    required this.cardWidth,
    required this.cardHeight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                height: cardHeight - 50,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
