import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/konsultasi_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class PersiapanKarirPage extends StatefulWidget {
  const PersiapanKarirPage({Key? key}) : super(key: key);

  @override
  State<PersiapanKarirPage> createState() => _PersiapanKarirPageState();
}

class _PersiapanKarirPageState extends State<PersiapanKarirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Persiapan Karir',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/banner_1.png',
                      width: 300,
                      height: 90,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/banner_2.png',
                      width: 300,
                      height: 90,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/banner_3.png',
                      width: 300,
                      height: 90,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                  onTap: () => Get.to(ChatKonsultasiPage()),
                  child: konsultasi(
                    'assets/icons/icon_konsultasi_chat.png',
                    'Chat\nKonsultasi',
                  ),
                ),
                konsultasi(
                  'assets/icons/icon_psikotes.png',
                  'Psikotes',
                ),
                konsultasi(
                  'assets/icons/icon_cv.png',
                  'Buat CV',
                ),
                konsultasi(
                  'assets/icons/icon_kursus.png',
                  'Kursus\nDaring',
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
              children: [
                Container(
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
                            color: const Color(0xff85BDBF),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 144,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Color(0xffC2FCF7), width: 3),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '+ Tambah',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
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
                            color: const Color(0xff85BDBF),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 144,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Color(0xffC2FCF7), width: 3),
                          ),
                          child: Container(
                            child: Center(
                              child: Text(
                                '+ Tambah',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Artikel',
              style: GoogleFonts.poppins(
                color: const Color(0xff040F0F),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 328,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/banner_artikel.png',
                          height: 158,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Data Center Paling Guud',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Data Center adalah lorem ipsum pisum dolor sit amet lorem ceunah kata beurem mailtek its about ...',
                                style: GoogleFonts.roboto(
                                  color: const Color(0xff909193),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: 328,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/banner_artikel.png',
                          height: 158,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Data Center Paling Guud',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Data Center adalah lorem ipsum pisum dolor sit amet lorem ceunah kata beurem mailtek its about ...',
                                style: GoogleFonts.roboto(
                                  color: Color(0xff909193),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
              color: const Color(0xffC2FCF7),
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
