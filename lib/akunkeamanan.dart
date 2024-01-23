import 'package:flutter/material.dart';

void main() {
  runApp(AkunKeamanan());
}

class AkunKeamanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Akun dan Keamanan',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10), // Space between app bar and content

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10), // Space between "Akun dan Keamanan" and "Username" texts

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'gto123',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Space between sections and divider
                  Divider(thickness: 2, color: Colors.black), // Thicker divider for the first section
                  SizedBox(height: 10), // Space between divider and next section

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '081122334455',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Space between sections and divider
                  Divider(thickness: 2, color: Colors.black), // Thicker divider for the second section
                  SizedBox(height: 10), // Space between divider and next section

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'gto123@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Space between sections and bottom
                  Divider(thickness: 2, color: Colors.black), // Thicker divider for the last section
                  SizedBox(height: 10), // Space at the bottom
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Ganti Akun button pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(132, 161, 196, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        ),
                        child: Text(
                          'Ganti Akun',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Log Out button pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(132, 161, 196, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        ),
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
