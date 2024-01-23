import 'package:uaspemmob/bedroom/Slaintiula.dart';
import 'package:uaspemmob/bedroom/blaincead.dart';
import 'package:uaspemmob/bedroom/cluichi.dart';
import 'package:uaspemmob/bedroom/leanai.dart';
import 'package:uaspemmob/bedroom/nakas.dart';
import 'package:uaspemmob/bedroom/rolla.dart';
import 'package:uaspemmob/bedroom/surbandmaith.dart';
import 'package:uaspemmob/bedroom/tabhach.dart';
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
      title: 'Bedroom',
      home: Bedroom(),
    );
  }
}

class Bedroom extends StatelessWidget {
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
          'BEDROOM',
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
                        imagePath: 'assets/kasur.jpeg',
                        title: 'SURBANDMAITH',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Surbandmaith()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/rangkakasur.jpeg',
                        title: 'TÁBHACH',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tabchah()),
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
                        imagePath: 'assets/kasuranak.jpg',
                        title: 'LEANAÍ',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Leanai()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/bantal.jpeg',
                        title: 'SLÁINTIÚLA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Slaintiula()),
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
                        imagePath: 'assets/bantal2.jpg',
                        title: 'CLUICHÍ',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cluichi()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/guling.jpg',
                        title: 'ROLLA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rolla()),
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
                        imagePath: 'assets/selimut.jpeg',
                        title: 'BLAINCÉAD',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Blaincead()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/rakkayu.jpg',
                        title: 'NAKAS',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Nakas()),
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
  final VoidCallback? onTap;

  const RoomCard({
    required this.imagePath,
    required this.title,
    required this.cardWidth,
    required this.cardHeight,
    this.onTap,
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