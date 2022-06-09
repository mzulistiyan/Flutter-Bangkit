import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/chat_konsultaso_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/konsultasi_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/selesai_pembayaran_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class MenungguPembayaran extends StatelessWidget {
  const MenungguPembayaran({Key? key}) : super(key: key);

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
                color: Color(0xffAA3D43),
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
                          color: Color(0xffCC4950),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/icon_process.png',
                            width: 40,
                            height: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Menunggu Pembayaran',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '00:59:57',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BNI Virtual Account',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/icon_bni.png',
                        width: 53,
                        height: 53,
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Nomor Virtual Account',
                    style: GoogleFonts.roboto(color: const Color(0xff787878)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '8277081238828130',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Salin',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: const Color(0xffCC4950)),
                          ),
                          Icon(
                            Icons.copy,
                            size: 12,
                            color: Color(0xffCC4950),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total Pembayaran',
                    style: GoogleFonts.roboto(color: const Color(0xff787878)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rp 50.000',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.copy,
                            size: 12,
                            color: Color(0xffCC4950),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Get.to(SelesaiPembayaranPage()),
                        child: Text(
                          'Lihat Detail',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: const Color(0xffCC4950)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color(0xffCC4950),
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Get.to(ChatPage());
                          },
                          child: Text(
                            'Lihat Cara Pembayaran',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xffCC4950),
                            ),
                          )),
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
