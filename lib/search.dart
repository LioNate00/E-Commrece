import 'package:flutter/material.dart';
import 'package:uaspemmob/bathroom/bathroom.dart';
import 'package:uaspemmob/bathroom/hreintvant.dart';
import 'package:uaspemmob/bathroom/karanavatni.dart';
import 'package:uaspemmob/bathroom/sapuskattari.dart';
import 'package:uaspemmob/bedroom/bedroom.dart';
import 'package:uaspemmob/bedroom/cluichi.dart';
import 'package:uaspemmob/bedroom/leanai.dart';
import 'package:uaspemmob/homepage.dart';
import 'package:uaspemmob/kitchen/hjarta.dart';
import 'package:uaspemmob/kitchen/kitchen.dart';
import 'package:uaspemmob/livingroom/livingroom.dart';

void main(){
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Pencarian(),
        ]),
      ),
    );
  }
}
class Pencarian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 16,
            top: 56,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black, // Change color to black
                size: 34, // Set the size of the icon
              ),
            ),
          ),
          Positioned(
            left: 56,
            top: 56,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Function to be executed when the text field is tapped
                    print('Pencarian tapped');
                  },
                  child: Container(
                    width: 249.43,
                    height: 42,
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 10),
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        hintText: 'Meja Kamar Tidur',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 10),
                        filled: true,
                        fillColor: Color(0xFF29ADFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(54),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Function to be executed when the text field is tapped
                        print('Pencarian tapped');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 30,
            top: 180,
            child: Container(
              width: 300,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 165,
            child: Container(
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LivingRoom()),
                  );
                },
              child: Text(
                'Living Room',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0, // Adjust the height value if needed
                ),
              ),
            ),
            ),
          ),
          Positioned(
            left: 30,
            top: 200,
            child: Container(
              width: 300,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 185,
            child: Container(
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bathroom()),
                  );
                },
              child: Text(
                'Bahtroom',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0, // Adjust the height value if needed
                ),
              ),
            ),
            ),
          ),
          Positioned(
            left: 30,
            top: 220,
            child: Container(
              width: 300,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 205,
            child: Container(
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kitchen()),
                  );
                },
              child: Text(
                'Kitchen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0, // Adjust the height value if needed
                ),
              ),
            ),
            ),
          ),
          Positioned(
            left: 30,
            top: 240,
            child: Container(
              width: 300,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 225,
            child: Container(
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bedroom()),
                  );
                },
              child: Text(
                'Bedroom',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0, // Adjust the height value if needed
                ),
              ),
            ),
            ),
          ),
          Positioned(
            left: 30,
            top: 290,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hjarta()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/mejamakan2.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 310,
            child: Container(
              child: Text(
                'HJARTA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 390,
            child: GestureDetector(
              onTap: () {
                // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                // You can replace the print statements with your actual logic.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Leanai()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/kasuranak.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 410,
            child: Container(
              child: Text(
                'LEANAI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 490,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sapuskattari()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/tempatsabun.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 135,
            top: 510,
            child: Container(
              child: Text(
                'SAKA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 190,
            top: 290,
            child: GestureDetector(
              onTap: () {
                // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                // You can replace the print statements with your actual logic.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hreintvant()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/shower.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 290,
            top: 310,
            child: Container(
              child: Text(
                'HREITVANT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 190,
            top: 390,
            child: GestureDetector(
              onTap: () {
                // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                // You can replace the print statements with your actual logic.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Karavatni()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/keran2.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 295,
            top: 410,
            child: Container(
              child: Text(
                'KNAVATNI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 190,
            top: 490,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cluichi()),
                );
              },
              child: Container(
                width: 99,
                height: 72,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black, // Specify the left border color
                        width: 2.0, // Specify the left border width
                      ),
                      right: BorderSide(
                        color: Colors.black, // Specify the right border color
                        width: 2.0, // Specify the right border width
                      ),
                      top: BorderSide(
                        color: Colors.black, // Specify the top border color
                        width: 2.0, // Specify the top border width
                      ),
                      bottom: BorderSide(
                        color: Colors.black, // Specify the bottom border color
                        width: 2.0, // Specify the bottom border width
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/bantal.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 295,
            top: 510,
            child: Container(
              child: Text(
                'SLAINTIULA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 56,
            child: GestureDetector(
              onTap: () {
                // Function to be executed when the back icon is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}