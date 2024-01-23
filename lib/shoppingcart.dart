import 'package:uaspemmob/checkout.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Cart());
}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Keranjang(),
        ]),
      ),
    );
  }
}

class Keranjang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned(
              left: 70,
              top: 56,
              child: Container(
                width: 249.43,
                height: 42,
                child: Text(
                  'Keranjang',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 56,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 320,
              top: 56,
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the back icon is tapped
                  print('Love icon tapped');
                },
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 100,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 102,
              child: Text(
                'Pilih Semua',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
                left: 20,
                top: 140,
                child: Container(
                  width: 320,
                  height: 38,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 90,
              top: 155,
              child: Text(
                'Dikirim ke Rumah',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 170,
              top: 155,
              child: Text(
                'NAUFAL HAFIZH',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 150,
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the back icon is tapped
                  print('Titik tapped');
                },
                child: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 220,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 200,
              child: GestureDetector(
                onTap: () {
                  // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                  // You can replace the print statements with your actual logic.
                  print("Sofa tapped");
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
                        "assets/sofa.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 225,
              child: Text(
                'Rp. 5.790.000',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 200,
              child: Text(
                'Aurora',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 190, // Adjust the left position as needed
              top: 245, // Adjust the top position as needed
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the trash icon is tapped
                  print('Trash icon tapped');
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                left: 220,
                top: 245,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 220,
              top: 238,
              child: NumberCounter(),
            ),
            Positioned(
              left: 60,
              top: 320,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 300,
              child: GestureDetector(
                onTap: () {
                  // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                  // You can replace the print statements with your actual logic.
                  print("Penahan tapped");
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
                        "assets/rakkayu.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 325,
              child: Text(
                'Rp. 2.800.000',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 300,
              child: Text(
                'SVELTE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 190, // Adjust the left position as needed
              top: 345, // Adjust the top position as needed
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the trash icon is tapped
                  print('Trash icon tapped');
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                left: 220,
                top: 345,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 220,
              top: 338,
              child: NumberCounter(),
            ),
            Positioned(
              left: 60,
              top: 420,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 400,
              child: GestureDetector(
                onTap: () {
                  // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                  // You can replace the print statements with your actual logic.
                  print("Meja Kaca tapped");
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
                        "assets/mejakaca.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 425,
              child: Text(
                'Rp. 2.680.000',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 400,
              child: Text(
                'SERENITY',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 190, // Adjust the left position as needed
              top: 445, // Adjust the top position as needed
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the trash icon is tapped
                  print('Trash icon tapped');
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                left: 220,
                top: 445,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 220,
              top: 438,
              child: NumberCounter(),
            ),
            Positioned(
              left: 60,
              top: 520,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 500,
              child: GestureDetector(
                onTap: () {
                  // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                  // You can replace the print statements with your actual logic.
                  print("Lampu tapped");
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
                        "assets/lampugantung.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 525,
              child: Text(
                'Rp. 370.000',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 500,
              child: Text(
                'WAMZLE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 190, // Adjust the left position as needed
              top: 545, // Adjust the top position as needed
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the trash icon is tapped
                  print('Trash icon tapped');
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                left: 220,
                top: 545,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 220,
              top: 538,
              child: NumberCounter(),
            ),
            Positioned(
              left: 60,
              top: 620,
              child: CheckContainer(),
            ),
            Positioned(
              left: 90,
              top: 600,
              child: GestureDetector(
                onTap: () {
                  // Handle the onTap event based on the direction (e.g., left, right, top, bottom)
                  // You can replace the print statements with your actual logic.
                  print("Hjarta tapped");
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
              left: 200,
              top: 625,
              child: Text(
                'Rp. 500.000',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 600,
              child: Text(
                'HJARTA',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 190, // Adjust the left position as needed
              top: 645, // Adjust the top position as needed
              child: GestureDetector(
                onTap: () {
                  // Function to be executed when the trash icon is tapped
                  print('Trash icon tapped');
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                left: 220,
                top: 645,
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 220,
              top: 638,
              child: NumberCounter(),
            ),
            Positioned(
                left: 0,
                top: 700,
                child: Container(
                  width: 360,
                  height: 55,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                )
            ),
            Positioned(
              left: 20,
              top: 705,
              child: Text(
                'Total Harga',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 720,
              child: Text(
                '-----------',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 270,
              top: 705,
              child: PositionedContainerButton(),
            ),









          ]
      ),
    );
  }
}
class CheckContainer extends StatefulWidget {
  @override
  _CheckContainerState createState() => _CheckContainerState();
}

class _CheckContainerState extends State<CheckContainer> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Function to be executed when the back icon is tapped
        print('Border tapped');

        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          border: Border.all(
            color: isChecked ? Colors.green : Colors.black,
            width: 1.0,
          ),
        ),
        child: isChecked
            ? Icon(
          Icons.check,
          color: Colors.black,
        )
            : null,
      ),
    );
  }
}

class PositionedContainerButton extends StatefulWidget {
  @override
  _PositionedContainerButtonState createState() =>
      _PositionedContainerButtonState();
}

class _PositionedContainerButtonState extends State<PositionedContainerButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 20,
          height: 10,
          color: Colors.blue,
        ),
        Positioned(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckOut()),
              );
            },
            child: Text('Beli'),
          ),
        ),
      ],
    );
  }
}

class NumberCounter extends StatefulWidget {
  @override
  _NumberCounterState createState() => _NumberCounterState();
}

class _NumberCounterState extends State<NumberCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          iconSize: 20,
          onPressed: () {
            setState(() {
              count = (count > 0) ? count - 1 : 0;
            });
          },
        ),
        SizedBox(
          width: 15.0, // Jarak antara ikon dan teks angka
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          iconSize: 20,
          onPressed: () {
            setState(() {
              count = count + 1;
            });
          },
        ),
      ],
    );
  }
}