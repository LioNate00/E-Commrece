import 'package:uaspemmob/rincianpesanan.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  Widget yourConsolidatedWidget() {
    return Container(
      width: 390,
      height: 650,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFFE8F0FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Stack(
        children: [
          // Bagian atas dengan warna latar belakang pertama (ukuran diubah menjadi 150)
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 390,
              height: 500, // Ubah tinggi sesuai kebutuhan
              decoration: const BoxDecoration(
                color: Color(0xFFE8F0FA), // Ganti dengan warna latar belakang yang diinginkan
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 5.5,
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
            top: 5.5,
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
            top: 68.5,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'IDR 2.760.000',
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
            top: 68.5,
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
            top: 100,
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
            top: 100,
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
            top: 160,
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
            top: 160,
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
            left: 0,
            top: 180,
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

          // Bagian bawah dengan warna latar belakang kedua
          Positioned(
            left: 0,
            top: 181, // Ubah posisi top sesuai dengan tinggi box pertama
            child: Container(
              width: 390,
              height: 460, // Sesuaikan tinggi dengan sisa ketinggian
              decoration: const BoxDecoration(
                color: Color(0xFF84A1C4), // Ganti dengan warna latar belakang yang diinginkan
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 190,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'Voucher Toko',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 185,
            top: 190,
            child: SizedBox(
              width: 179,
              height: 18.85,
              child: Text(
                'Gunakan / Masukan Kode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 215,
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

          const Positioned(
            left: 20,
            top: 225,
            child: SizedBox(
              width: 120,
              height: 19,
              child: Text(
                'Opsi Pengiriman',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 250,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'Hemat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 195,
            top: 250,
            child: SizedBox(
              width: 179,
              height: 18.85,
              child: Text(
                '10000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 270,
            child: SizedBox(
              width: 300,
              height: 18.85,
              child: Text(
                'Akan diterima pada tanggal 31 Februari - 5 Maret',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 290,
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

          const Positioned(
            left: 20,
            top: 300,
            child: SizedBox(
              width: 95,
              height: 19,
              child: Text(
                'Pesan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 185,
            top: 300,
            child: SizedBox(
              width: 179,
              height: 18.85,
              child: Text(
                'Tinggalkan Pesan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 325,
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

          const Positioned(
            left: 20,
            top: 335,
            child: SizedBox(
              width: 170,
              height: 19,
              child: Text(
                'Total Pesanan (1 Produk) :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 185,
            top: 335,
            child: SizedBox(
              width: 179,
              height: 18.85,
              child: Text(
                'Rp. 8.550.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 375,
            child: SizedBox(
              width: 135,
              height: 19,
              child: Text(
                'Metode Pembayaran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 185,
            top: 375,
            child: SizedBox(
              width: 179,
              height: 18.85,
              child: Text(
                'Rekening BCA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 400,
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

          const Positioned(
            left: 20,
            top: 410,
            child: SizedBox(
              width: 135,
              height: 19,
              child: Text(
                'Rincian Pembayaran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 435,
            child: SizedBox(
              width: 110,
              height: 19,
              child: Text(
                'Subtotal Produk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 225,
            top: 435,
            child: SizedBox(
              width: 100,
              height: 18.85,
              child: Text(
                'Rp. 8.550.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 24,
            top: 450,
            child: SizedBox(
              width: 129,
              height: 19,
              child: Text(
                'Subtotal Pengiriman',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 235,
            top: 450,
            child: SizedBox(
              width: 100,
              height: 18.85,
              child: Text(
                'Rp. 10.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 465,
            child: SizedBox(
              width: 110,
              height: 19,
              child: Text(
                'Biaya Layanan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 239,
            top: 465,
            child: SizedBox(
              width: 100,
              height: 18.85,
              child: Text(
                'Rp. 2.500',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 18,
            top: 480,
            child: SizedBox(
              width: 130,
              height: 19,
              child: Text(
                'Biaya Penanganan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 239,
            top: 480,
            child: SizedBox(
              width: 100,
              height: 18.85,
              child: Text(
                'Rp. 1.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 515,
            child: SizedBox(
              width: 150,
              height: 19,
              child: Text(
                'Total Pembayaran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 223,
            top: 515,
            child: SizedBox(
              width: 100,
              height: 18.85,
              child: Text(
                'Rp. 8.563.500',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color(0xFFE8F0FA),
        iconTheme: IconThemeData(color: Colors.black), // Change icon color
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, // Change arrow color
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Column(
        children: [
          yourConsolidatedWidget(),
          SizedBox(
            width: double.infinity,
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Text(
                    'Total Harga \nRp. 8.563.500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xFF01681E),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RincianPack()),
                        );
                      },
                      borderRadius: BorderRadius.circular(0),
                      child: const SizedBox(
                        width: 120,
                        child: Center(
                          child: Text(
                            'Buat Pesanan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
        ],
      ),
    );
  }
}