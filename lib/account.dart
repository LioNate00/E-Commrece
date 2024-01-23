import 'package:uaspemmob/customerservice.dart';
import 'package:uaspemmob/homepage.dart';
import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/search.dart';
import 'package:uaspemmob/setting.dart';
import 'package:uaspemmob/shoppingcart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Account());
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Akun Saya',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Color.fromRGBO(232, 240, 250, 1.0),
        centerTitle: true,
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
        color: Color.fromRGBO(232, 240, 250, 1.0), // Body background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20), // Adjust the space as needed
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Card(
                    elevation: 5.0,
                    shape: CircleBorder(),
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/onizuka.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.white,
                      onPressed: () {
                        print('Change Profile Picture');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Onizuka',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatusIndicator(text: '0', secondaryText: 'Pengemasan'),
                  SizedBox(width: 30),
                  StatusIndicator(text: '0', secondaryText: 'Dikirim'),
                  SizedBox(width: 30),
                  StatusIndicator(text: '1', secondaryText: 'Selesai'),
                ],
              ),
            ),
            SizedBox(height: 40),
            buildClickableTextWithAdditionalText(
              mainText: 'Voucher',
              additionalText: '>',
              onPressed: () {
                print('Voucher Clicked');
              },
            ),
            SizedBox(height: 20),
            buildClickableTextWithAdditionalText(
              mainText: 'Favorit Saya',
              additionalText: '>',
              onPressed: () {
                print('Favorit Saya Clicked');
              },
            ),
            SizedBox(height: 50),
            buildClickableTextWithAdditionalText(
              mainText: 'Pelayanan Pelanggan',
              additionalText: '>',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerService()),
                );
              },
            ),
            SizedBox(height: 20),
            buildClickableTextWithAdditionalText(
              mainText: 'Pengaturan',
              additionalText: '>',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
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

  Widget buildClickableTextWithAdditionalText({
    required String mainText,
    required String additionalText,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Text(
              mainText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            additionalText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class StatusIndicator extends StatelessWidget {
  final String text;
  final String secondaryText;

  StatusIndicator({required this.text, required this.secondaryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Text(
          secondaryText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

