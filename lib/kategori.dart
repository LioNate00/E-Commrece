import 'package:uaspemmob/bathroom/bathroom.dart' as BathroomPage;
import 'package:uaspemmob/bedroom/bedroom.dart' as BedroomPage;
import 'package:uaspemmob/kitchen/kitchen.dart';
import 'package:uaspemmob/search.dart';
import 'package:uaspemmob/shoppingcart.dart';
import 'package:flutter/material.dart';
import 'account.dart';
import 'homepage.dart';
import 'livingroom/livingroom.dart';
import 'bedroom/bedroom.dart';

void main() {
  runApp(Kategori());
}

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KategoriPage(),
    );
  }
}

class KategoriPage extends StatelessWidget {
  Color rgbColor(int r, int g, int b) {
    return Color.fromRGBO(r, g, b, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rgbColor(232, 240, 250),
        title: Text(
          'EPIPHANY',
          style: TextStyle(color: Colors.black, fontSize: 36),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pencarian()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Keranjang()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: rgbColor(232, 240, 250), // Setting the background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back,',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Ideas For Your Day',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KategoriCircle(
                        title: 'Living Room',
                        iconData: Icons.weekend_rounded,
                        backgroundColor: rgbColor(217, 217, 217),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LivingRoom()),
                          );
                        },
                      ),
                      KategoriCircle(
                        title: 'Bedroom',
                        iconData: Icons.bed_rounded,
                        backgroundColor: rgbColor(217, 217, 217),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BedroomPage.Bedroom()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KategoriCircle(
                        title: 'Bathroom',
                        iconData: Icons.bathtub_rounded,
                        backgroundColor: rgbColor(217, 217, 217),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BathroomPage.Bathroom()),
                          );
                        },

                      ),
                      KategoriCircle(
                        title: 'Kitchen',
                        iconData: Icons.kitchen_rounded,
                        backgroundColor: rgbColor(217, 217, 217),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Kitchen()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(132, 161, 196, 1.0),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.grid_view_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kategori()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class KategoriCircle extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const KategoriCircle({
    required this.title,
    required this.iconData,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(60),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 60,
                  color: Colors.black,
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
