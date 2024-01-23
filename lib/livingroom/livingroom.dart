import 'package:flutter/material.dart';
import 'package:uaspemmob/alamat.dart';
import 'package:uaspemmob/bedroom/bedroom.dart';
import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/livingroom/aurora.dart';
import 'package:uaspemmob/livingroom/drxpet.dart';
import 'package:uaspemmob/livingroom/gordyra.dart';
import 'package:uaspemmob/livingroom/raktri.dart';
import 'package:uaspemmob/livingroom/serenity.dart';
import 'package:uaspemmob/livingroom/svelte.dart';
import 'package:uaspemmob/livingroom/wallwonders.dart';
import 'package:uaspemmob/livingroom/wamzle.dart';
import 'package:uaspemmob/shoppingcart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Living Room',
      home: LivingRoom(),
    );
  }
}

class LivingRoom extends StatelessWidget {
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
          'LIVING ROOM',
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
              // Navigate to the shopping cart page
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
                        imagePath: 'assets/sofa.jpg',
                        title: 'AURORA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Aurora()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/mejakaca.jpg',
                        title: 'SERENITY',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Serenity()),
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
                        imagePath: 'assets/lampulangit2.jpg',
                        title: 'WALL WONDERS',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Wallwanders()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/rakkayu.jpg',
                        title: 'SVELTE',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Svelte()),
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
                        imagePath: 'assets/rakbesikayu.jpg',
                        title: 'RAKTRI',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Raktri()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/gorden.jpg',
                        title: 'GORDYRA',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gordyra()),
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
                        imagePath: 'assets/karpet.jpg',
                        title: 'DRXPET',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Drxpet()),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      RoomCard(
                        imagePath: 'assets/lampugantung.jpg',
                        title: 'WAMZLE',
                        cardWidth: 150,
                        cardHeight: 200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Wamzle()),
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
