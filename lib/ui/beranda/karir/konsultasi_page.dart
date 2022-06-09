import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/pembayaran_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatKonsultasiPage extends StatefulWidget {
  const ChatKonsultasiPage({Key? key}) : super(key: key);

  @override
  State<ChatKonsultasiPage> createState() => _ChatKonsultasiPageState();
}

class _ChatKonsultasiPageState extends State<ChatKonsultasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Persiapan Karir',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 8,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/person-2.png',
                        width: 70,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ricard Archi Santan Qassandra, Ph.D',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Persiapan Karir',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Color(0xff909193),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Universitas Istio Kubectl',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff040F0F),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffFFC107),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '4.9 (29)',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Biaya Konsultasi',
                            style: GoogleFonts.poppins(
                                fontSize: 11, color: Color(0xff909193)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp. 50.000 ',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                '/ 60 Menit',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 120,
                        height: 43,
                        decoration: BoxDecoration(
                          color: Color(0xffCC4950),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Chat Sekarang',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 8,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/person-2.png',
                        width: 70,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ricard Archi Santan Qassandra, Ph.D',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Persiapan Karir',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Color(0xff909193),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Universitas Istio Kubectl',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff040F0F),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xffFFC107),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '4.9 (29)',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Biaya Konsultasi',
                            style: GoogleFonts.poppins(
                                fontSize: 11, color: Color(0xff909193)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp. 50.000 ',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                '/ 60 Menit',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 120,
                        height: 43,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 2, color: Color(0xffCC4950))),
                        child: TextButton(
                          onPressed: () {
                            Get.to(const PembayaranPage());
                          },
                          child: Text(
                            'Atur Jadwal',
                            style: GoogleFonts.poppins(
                              color: Color(0xffCC4950),
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
