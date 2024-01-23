import 'package:flutter/material.dart';

void main() {
  runApp(CustomerService());
}

class CustomerService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'FAQ',
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                FAQTile(
                  isFirstTile: true,
                  question: 'Bagaimana cara membatalkan pesanan?',
                  answer: '1. Buka halaman rincian pesanan\n'
                      '2. Klik tombol batalkan pesanan\n\n'
                      'Proses ini akan memakan waktu 1x24Jam',
                ),
                FAQTile(
                  question: 'Bagaimana cara mengubah email?',
                  answer: 'Anda dapat mengubah Email anda dengan cara berikut:\n\n'
                      '1. Pilih tab Akun saya\n'
                      '2. Pilih pengaturan\n'
                      '3. Pilih akun & kemanan\n'
                      '4. Pilih Email\n'
                      '5. Pilih ganti Email',
                ),
                FAQTile(
                  question: 'Bagaimana cara mengubah No. Handphone?',
                  answer: 'Anda dapat mengubah No. Handphone anda dengan cara berikut:\n\n'
                      '1. Pilih tab Akun saya\n'
                      '2. Pilih pengaturan\n'
                      '3. Pilih akun & kemanan\n'
                      '4. Pilih No. Handphone\n'
                      '5. Pilih ganti No. Handphone',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FAQTile extends StatefulWidget {
  final String question;
  final String answer;
  final bool isFirstTile;

  FAQTile({
    required this.question,
    required this.answer,
    this.isFirstTile = false,
  });

  @override
  _FAQTileState createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: ExpansionTile(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            widget.question,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        children: <Widget>[
          Divider(color: Colors.black, thickness: _isExpanded ? 2.0 : 1.0),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.answer.split('\n').map((item) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        initiallyExpanded: _isExpanded,
      ),
    );
  }
}
