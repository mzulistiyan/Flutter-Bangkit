import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/chat_konsultaso_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SelesaiPembayaranPage extends StatelessWidget {
  const SelesaiPembayaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                color: Color(0xff2CA033),
              ),
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 88,
                        height: 88,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffD5ECD6),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.check_circle_outline_outlined,
                          size: 50,
                          color: Color(0xff165019),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pembayaran Berhasil',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Status',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        'Transaksi Berhasil',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff058B77)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Pembayaran',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        'AN_P2330129',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tanggal Transaksi',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        '12 Juni 2021',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Waktu Transaksi',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        '22:00 WIB',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Konsultasi',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        'Konsultasi Persiapan Karir',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        'Rp. 50.000',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Metode Pembayaran',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          'BNI Virtual Account',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Pembayaran',
                        style:
                            GoogleFonts.roboto(color: const Color(0xff787878)),
                      ),
                      Text(
                        'Rp. 50.000',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: const Color(0xff85BDBF),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Sekarang kamu sudah bisa berkonsultasi dengan konsultan pilihan kamu',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xffCC4950),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Get.to(ChatPage());
                          },
                          child: Text(
                            'Chat dengan Konsultan',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          )),
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
}
