import 'package:uaspemmob/bathroom/hreintvant.dart';
import 'package:uaspemmob/bathroom/karanavatni.dart';
import 'package:uaspemmob/bathroom/vaskur.dart';
import 'package:uaspemmob/bedroom/cluichi.dart';
import 'package:uaspemmob/bedroom/leanai.dart';
import 'package:uaspemmob/bedroom/rolla.dart';
import 'package:uaspemmob/checkout.dart';
import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/kitchen/skapur.dart';
import 'package:uaspemmob/kitchen/stjarna.dart';
import 'package:uaspemmob/kitchen/vribben.dart';
import 'package:uaspemmob/livingroom/aurora.dart';
import 'package:uaspemmob/livingroom/serenity.dart';
import 'package:uaspemmob/livingroom/svelte.dart';
import 'package:uaspemmob/login.dart';
import 'package:uaspemmob/rincianpesanan.dart';
import 'package:uaspemmob/search.dart';
import 'package:uaspemmob/shoppingcart.dart';
import 'package:flutter/material.dart';
import 'account.dart';

void main() {
  runApp(Homepage());
}


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cluichi': (context) => Cluichi(),
        '/rolla': (context) => Rolla(),
        '/leanai': (context) => Leanai(),
        '/karavatni': (context) => Karavatni(),
        '/hreintvant': (context) => Hreintvant(),
        '/vaskur': (context) => Vaskur(),
        '/aurora': (context) => Aurora(),
        '/serenity': (context) => Serenity(),
        '/svelte': (context) => Svelte(),
        '/skapur': (context) => Skapur(),
        '/stjarna': (context) => Stjarna(),
        '/vribben': (context) => Vribben(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EPIPHANY',
          style: TextStyle(color: Colors.black, fontSize: 36),
        ),
        backgroundColor: Color.fromRGBO(232, 240, 250, 1.0),
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
            icon: Icon(Icons.login),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
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
        color: Color.fromRGBO(232, 240, 250, 1.0),
        child: ListView(
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
            CustomCard(
              title: 'BEDROOM',
              imagePath1: 'assets/bantal2.jpg',
              imagePath2: 'assets/guling.jpg',
              imagePath3: 'assets/kasuranak.jpg',
              onTapTitle: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cluichi()),
                );
              },
              onTapImage1: () {
                // Handle tap on the first image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cluichi()),
                );
              },
              onTapImage2: () {
                // Handle tap on the second image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rolla()),
                );
              },
              onTapImage3: () {
                // Handle tap on the third image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Leanai()),
                );
              },
            ),
            CustomCard(
              title: 'BATHROOM',
              imagePath1: 'assets/keran2.jpg',
              imagePath2: 'assets/shower.jpg',
              imagePath3: 'assets/wastafel2.jpg',
              onTapTitle: () {
                // Handle tap on the title
                print('BATHROOM card title clicked');
              },
              onTapImage1: () {
                // Handle tap on the first image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Karavatni()),
                );
              },
              onTapImage2: () {
                // Handle tap on the second image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hreintvant()),
                );
              },
              onTapImage3: () {
                // Handle tap on the third image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vaskur()),
                );
              },
            ),
            CustomCard(
              title: 'LIVING ROOM',
              imagePath1: 'assets/sofa.jpg',
              imagePath2: 'assets/mejakaca.jpg',
              imagePath3: 'assets/rakkayu.jpg',
              onTapTitle: () {
                // Handle tap on the title
                print('LIVING ROOM card title clicked');
              },
              onTapImage1: () {
                // Handle tap on the first image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aurora()),
                );
              },
              onTapImage2: () {
                // Handle tap on the second image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Serenity()),
                );
              },
              onTapImage3: () {
                // Handle tap on the third image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Svelte()),
                );
              },
            ),
            CustomCard(
              title: 'KITCHEN',
              imagePath1: 'assets/kabinetkayu.jpg',
              imagePath2: 'assets/mejamakan.jpg',
              imagePath3: 'assets/alatmakan.jpg',
              onTapTitle: () {
                // Handle tap on the title
                print('KITCHEN card title clicked');
              },
              onTapImage1: () {
                // Handle tap on the first image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Skapur()),
                );
              },
              onTapImage2: () {
                // Handle tap on the second image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stjarna()),
                );
              },
              onTapImage3: () {
                // Handle tap on the third image
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vribben()),
                );
              },
            ),
            // Add more CustomCard widgets if needed
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(132,161,196, 1.0),
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
                }
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
class CustomCard extends StatelessWidget {
  final String title;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final VoidCallback onTapTitle;
  final VoidCallback onTapImage1;
  final VoidCallback onTapImage2;
  final VoidCallback onTapImage3;

  const CustomCard({
    required this.title,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
    required this.onTapTitle,
    required this.onTapImage1,
    required this.onTapImage2,
    required this.onTapImage3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        color: Color.fromRGBO(232, 240, 250, 1.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: onTapTitle,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('$title card clicked');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: onTapImage1,
                        child: Image.asset(
                          imagePath1,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: onTapImage2,
                        child: Image.asset(
                          imagePath2,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: onTapImage3,
                        child: Image.asset(
                          imagePath3,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
