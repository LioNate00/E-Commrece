import 'package:flutter/material.dart';
import 'package:uaspemmob/bedroom/bedroom.dart';
import 'package:uaspemmob/kategori.dart';
import 'package:uaspemmob/main.dart';
void main() {
  runApp(const Cluichi());
}

class Cluichi extends StatelessWidget {
  const Cluichi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          DetailProduk(),
        ]),
      ),
    );
  }
}

class DetailProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFE8F0FA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bedroom()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 44,
                child: Container(
                  width: 28,
                  height: 28,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 5.83),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 106,
                child: Container(
                  width: 320,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bantal2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 14.05,
                top: 419,
                child: SizedBox(
                  width: 142.46,
                  height: 18.99,
                  child: Text(
                    'Kasur',
                    style: TextStyle(
                      color: Color(0xFF9D9EA3),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 450,
                child: Text(
                  'CLUICHÍ',
                  style: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Positioned(
                left: 230,
                top: 450,
                child: Text(
                  'Rp. 280.000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Positioned(
                left: 13.05,
                top: 484,
                child: SizedBox(
                  width: 107,
                  height: 20,
                  child: Text(
                    'Warna Tersedia',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 516,
                child: Container(
                  width: 82,
                  height: 26,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 82,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFF0F0F0)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28.45,
                        top: 4,
                        child: GestureDetector(
                          onTap: () {
                            // Add your button press logic here
                          },
                          child: SizedBox(
                            width: 46.75,
                            height: 18,
                            child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    'Abu',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 516,
                child: Container(
                  width: 82,
                  height: 26,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 82,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFF0F0F0)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28.45,
                        top: 4,
                        child: GestureDetector(
                          onTap: () {
                            // Add your shopping cart logic here
                          },
                          child: SizedBox(
                            width: 46.75,
                            height: 18,
                            child: Text(
                              'Biru',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 113,
                top: 516,
                child: Container(
                  width: 82,
                  height: 26,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 82,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFF0F0F0)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18.07,
                        top: 4,
                        child: GestureDetector(
                          onTap: () {
                            // Add your shopping cart logic here
                          },
                          child: SizedBox(
                            width: 46.75,
                            height: 18,
                            child: Text(
                              'Hitam',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13.05,
                top: 562,
                child: SizedBox(
                  width: 59,
                  height: 20,
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 14.31,
                top: 590,
                child: SizedBox(
                  width: 329.13,
                  height: 131.23,
                  child: Text(
                    'Investasikan dalam kenyamanan tidur Anda dengan koleksi bantal premium kami. Sempurnakan tempat tidur Anda dengan bantal yang lembut dan mendukung, menciptakan suasana tidur yang nyaman dan istimewa setiap malam.',
                    style: TextStyle(
                      color: Color(0xFF9D9EA3),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Positioned(
                left: 9,
                top: 749,
                child: Container(
                  width: 371,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFF84A1C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 6,
                        offset: Offset(0, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 764,
                child: Container(
                  width: 46,
                  height: 47,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            // Add your shopping cart logic here
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: Ink(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 46,
                                  height: 47,
                                  child: Center(
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kategori()),
                                  );                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          width: 16.50,
                          height: 16.50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 16.50,
                                  height: 12.21,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/17x12"),
                                      fit: BoxFit.fill,
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
              ),
              Positioned(
                left: 108.12,
                top: 769,
                child: Container(
                  width: 254.47,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Color(0xFF243045),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 6,
                        offset: Offset(0, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 186,
                top: 780,
                child: GestureDetector(
                  onTap: () {
                    // Add your shopping cart logic here
                  },
                  child: Text(
                    'Beli Sekarang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}