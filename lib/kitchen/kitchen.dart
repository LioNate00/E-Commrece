import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/kitchen/chaxpo.dart';
import 'package:uaspemmob/kitchen/hjarta.dart';
import 'package:uaspemmob/kitchen/ingvard.dart';
import 'package:uaspemmob/kitchen/kabinetset.dart';
import 'package:uaspemmob/kitchen/skapur.dart';
import 'package:uaspemmob/kitchen/stjarna.dart';
import 'package:uaspemmob/kitchen/tjollran.dart';
import 'package:uaspemmob/kitchen/vribben.dart';
import 'package:uaspemmob/shoppingcart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen',
      home: Kitchen(),
    );
  }
}
class Kitchen extends StatelessWidget {
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
          'KITCHEN',
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
                        imagePath: 'assets/kabinetkayu.jpg',
                        title: 'SKAPUR',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Skapur()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/kabinetset.jpg',
                        title: 'SKAPUR SET',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kabinetset()),
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
                        imagePath: 'assets/mejamakan.jpg',
                        title: 'STJARNA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stjarna()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/mejamakan2.jpeg',
                        title: 'HJARTA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Hjarta()),
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
                        imagePath: 'assets/piring.jpeg',
                        title: 'INGVARD',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ingvard()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/gelaskaca.jpeg',
                        title: 'TJOLLRAN',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tjollran()),
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
                        imagePath: 'assets/alatmakan.jpg',
                        title: 'VRIBBEN',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Vribben()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/lemari.jpeg',
                        title: 'CHAXPO',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chaxpo()),
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
