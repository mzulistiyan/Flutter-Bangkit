import 'package:flutter/material.dart';
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
                color: Color(0xff058B77),
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
                          color: Color(0xff285F65),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/icon_check.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pembayaran\nBerhasil',
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
                  Text(
                    'Status',
                    style: GoogleFonts.roboto(color: const Color(0xff787878)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Transaksi Berhasil',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff058B77)),
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
                      Container(
                        width: 132,
                        child: Text(
                          'Total Pembayaran',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          'AN_P2330129',
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
                      Container(
                        width: 132,
                        child: Text(
                          'Tanggal Transaksi',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          '12 Juni 2021',
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
                      Container(
                        width: 132,
                        child: Text(
                          'Waktu Transaksi',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          '22:00 WIB',
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
                      Container(
                        width: 132,
                        child: Text(
                          'Konsultasi',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          'Konsultasi Persiapan Karir',
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
                      Container(
                        width: 132,
                        child: Text(
                          'Harga',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          'Rp. 50.000',
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
                      Container(
                        width: 132,
                        child: Text(
                          'Metode Pembayaran',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
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
                      Container(
                        width: 132,
                        child: Text(
                          'Total Pembayaran',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff787878)),
                        ),
                      ),
                      Container(
                        width: 132,
                        child: Text(
                          'Rp. 50.000',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: const Color(0xff85BDBF),
                          ),
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
                      width: 288,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffC2FCF7),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Chat Dengan Konsultan',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xff57737A),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
