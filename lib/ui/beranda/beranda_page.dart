import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/persiapan_karir_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int currentIndex = 0;
  List imgList = [
    'assets/banner_1.png',
    'assets/banner_1.png',
    'assets/banner_1.png',
  ];
  @override
  Widget build(BuildContext context) {
    int index = -1;
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 24 : 10,
        height: currentIndex == index ? 10 : 10,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:
                currentIndex == index ? Color(0xffAA3D43) : Color(0xffEEC2C5)),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/person-1.png',
                        width: 35,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Halo, Leonardo Yaeger',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 24,
                    color: Color(0xff85BDBF),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: CarouselSlider(
                  items: imgList
                      .map(
                        (image) => Image.asset(
                          image,
                          width: 340,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      viewportFraction: 1,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      })),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: imgList.map((e) {
                index++;
                return indicator(index);
              }).toList(),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Pilih Konsultasi mu',
              style: GoogleFonts.poppins(
                color: Color(0xff040F0F),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const PersiapanKarirPage());
                  },
                  child: konsultasi(
                    'assets/icons/icon_briefcase.png',
                    'Persiapan\nKarir',
                  ),
                ),
                konsultasi(
                  'assets/icons/icon_dolar.png',
                  'Keuangan',
                ),
                konsultasi(
                  'assets/icons/icon_briefcase.png',
                  'Kesehatan',
                ),
                konsultasi(
                  'assets/icons/icon_dolar.png',
                  'Hukum',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                konsultasi(
                  'assets/icons/icon_dolar.png',
                  'Teknologi',
                ),
                konsultasi(
                  'assets/icons/icon_briefcase.png',
                  'Arsitektur &\nBangunan',
                ),
                konsultasi(
                  'assets/icons/icon_dolar.png',
                  'Hewan',
                ),
                konsultasi(
                  'assets/icons/icon_briefcase.png',
                  'Lainnya',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Rekomendasi Hari Ini',
              style: GoogleFonts.poppins(
                color: const Color(0xff040F0F),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [cardBuku(), cardBuku()],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget cardBuku() {
    return Container(
      width: 160,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/buku.png',
              width: 200,
            ),
            Text(
              'Buku Mind Platter Bejana Pikiran oleh ...',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rp100.100',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 144,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xffCC4950),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                child: Center(
                  child: Text(
                    '+ Tambah ke Keranjang',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget konsultasi(String image, String desc) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xffFDF7F7),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Color(0xff040F0F),
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
