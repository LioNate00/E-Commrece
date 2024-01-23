import 'package:uaspemmob/login.dart';
import 'package:flutter/material.dart';
import 'akunkeamanan.dart';
import 'alamat.dart';

void main() {
  runApp(Setting());
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PENGATURAN',
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
            _buildClickableText(
              'Pengaturan Akun',
              onPressed: () {
                // Handle navigation for 'Pengaturan Akun'
              },
            ),
            SizedBox(height: 20),
            _buildClickableTextWithSideText(
              'Akun dan Keamanan',
              '>',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AkunKeamanan()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildClickableTextWithSideText(
              'Alamat Saya',
              '>',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Alamat()),
                );
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.5, // Adjust the width percentage as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle Ganti Akun button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(132, 161, 196, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Adjust button size here
                        ),
                        child: Text('Ganti Akun', style: TextStyle(fontSize: 18, color: Colors.black)), // Text color changed to black
                      ),
                    ),
                    SizedBox(height: 10),
                    FractionallySizedBox(
                      widthFactor: 0.5, // Adjust the width percentage as needed
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(132, 161, 196, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Adjust button size here
                        ),
                        child: Text('Log Out', style: TextStyle(fontSize: 18, color: Colors.black)), // Text color changed to black
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

  Widget _buildClickableText(String text, {VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Color.fromRGBO(217, 217, 217, 1.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildClickableTextWithSideText(String mainText, String sideText, {VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              mainText,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              sideText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
