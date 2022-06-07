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
  @override
  Widget build(BuildContext context) {
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
              height: 20,
            ),
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
                  onTap: () {
                    Get.to(const PersiapanKarirPage());
                  },
                  child: konsultasi(
                    'assets/icons/icon_karir.png',
                    'Persiapan\nKarir',
                  ),
                ),
                konsultasi(
                  'assets/icons/icon_keuangan.png',
                  'Keuangan',
                ),
                konsultasi(
                  'assets/icons/icon_kesehatan.png',
                  'Kesehatan',
                ),
                konsultasi(
                  'assets/icons/icon_hukum.png',
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
                  'assets/icons/icon_teknologi.png',
                  'Teknologi',
                ),
                konsultasi(
                  'assets/icons/icon_bangunan.png',
                  'Arsitektur &\nBangunan',
                ),
                konsultasi(
                  'assets/icons/icon_hewan.png',
                  'Hewan',
                ),
                konsultasi(
                  'assets/icons/icon_lainnya.png',
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
