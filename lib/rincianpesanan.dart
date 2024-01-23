import 'package:uaspemmob/homepage.dart';
import 'package:flutter/material.dart';

class RincianPack extends StatelessWidget {
  const RincianPack({Key? key}) : super(key: key);

  Widget yourConsolidatedWidget() {
    return Container(
      width: 390,
      height: 610,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFE8F0FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 34,
            top: 10,
            child: Text(
              'Informasi Pengiriman',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 52,
            top: 29,
            child: Text(
              'Reguler - 5 Hari',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 51,
            top: 80,
            child: Text(
              'Paket sedang Dikemas',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 51,
            top: 45,
            child: Text(
              'JNE Express - 2131321321392013213',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 100,
            child: Container(
              width: 390,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(//Garis Barang
            left: 0,
            top: 410,
            child: Container(
              width: 390,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 480,
            child: Container(//Garis Metode
              width: 390,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(//Logo lokasi
            left: 34,
            top: 110,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://w7.pngwing.com/pngs/896/30/png-transparent-oval-white-illustration-point-light-location-logo-text-photography-heart.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 65,
            top: 114,
            child: Text(
              'Alamat Pengiriman',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 70,
            top: 150,
            child: Text(
              'Shela Atya Mitasya',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 70,
            top: 165,
            child: Text(
              '(+62) 812-3213-3213',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 70,
            top: 180,
            child: Text(
              'Jalan 21 Teluk Gong No. 39, RT.5/RW.10,\nKel.Pejagalan,Penjaringan, 14450',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 230,
            child: Container(
              width: 75,
              height: 75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://e7.pngegg.com/pngimages/683/637/png-clipart-shower-hot-tub-bathroom-bathtub-shower-angle-furniture-thumbnail.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 132,
            top: 225,
            child: SizedBox(
              width: 130,
              height: 25.13,
              child: Text(
                'HREINTVANT',
                style: TextStyle(
                  color: Color(0xFF243045),
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 133,
            top: 285,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'IDR 2.760.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 251,
            top: 440,
            child: SizedBox(
              width: 100,
              height: 19,
              child: Text(
                'IDR 8.550.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 304,
            top: 285,
            child: SizedBox(
              width: 26.18,
              height: 18.85,
              child: Text(
                'x1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 320,
            child: Container(
              width: 75,
              height: 75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://w7.pngwing.com/pngs/533/297/png-transparent-sofa-bed-couch-furniture-loveseat-white-sofa-angle-black-white-sofa.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 132,
            top: 320,
            child: SizedBox(
              width: 142.40,
              height: 25.13,
              child: Text(
                'AURORA',
                style: TextStyle(
                  color: Color(0xFF243045),
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 133,
            top: 375,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'IDR 5.790.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 304,
            top: 375,
            child: SizedBox(
              width: 26.18,
              height: 18.85,
              child: Text(
                'x1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 25,
            top: 425,
            child: Text(
              'Total Pesanan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 440,
            child: Text(
              'Metode Pembayaran',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 25,
            top: 460,
            child: SizedBox(
              width: 83,
              height: 14,
              child: Text(
                'BCA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 30,
            top: 495,
            child: Text(
              'No Pesanan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 29,
            top: 515,
            child: Text(
              'Waktu Pemesanan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 29,
            top: 535,
            child: Text(
              'Waktu Pembayaran',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 29,
            top: 555,
            child: Text(
              'Waktu Pengiriman',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 29,
            top: 575,
            child: Text(
              'Waktu Pesanan Selesai',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 240,
            top: 555,
            child: Text(
              '20-02-2002 15:30',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 240,
            top: 535,
            child: Text(
              '20-02-2002 16:50',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
              left: 240,
              top: 575,
              child: Text(
              '30-02-2002 12:40',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              ),
          ),
          const Positioned(
            left: 240,
            top: 515,
            child: Text(
              '20-02-2002 12:40',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const Positioned(
            left: 200,
            top: 495,
            child: Text(
              '2131321321392013213',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
              //(rest of your code)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rincian Pesanan",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFE8F0FA),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          yourConsolidatedWidget(),
          SizedBox(
            width: double.infinity,
            height: 65,
            child: Material(
              // Menggunakan Material untuk menghilangkan border
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xFF84A1C4), // Warna tombol
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                borderRadius: BorderRadius.circular(0),
                child: const Center(
                  child: Text(
                    'Beli Lagi',
                    style: TextStyle(
                      color: Colors.white, // Warna teks
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
