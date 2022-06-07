import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Akun',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 80),
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/person-2.png',
                    width: 68,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Leonardo Yaeger',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'yaeger@gmail.com',
                        style: GoogleFonts.poppins(fontSize: 11),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '0899-6656-8864',
                        style: GoogleFonts.poppins(fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 27, 16, 16),
              child: Column(
                children: [
                  listWidget(
                      'assets/icons/icon_setting.png', 'Pengaturan Akun'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget('assets/icons/icon_riwayat_nav.png',
                      'Riwayat Konsultasi'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget('assets/icons/icon_referral.png', 'Kode Referral'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget('assets/icons/icon_bantuan.png', 'Bantuan'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget(
                      'assets/icons/icon_syarat.png', 'Syarat & Ketentuan'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget(
                      'assets/icons/icon_privasi.png', 'Kebijakan Privasi'),
                  const Divider(
                    thickness: 2,
                  ),
                  listWidget('assets/icons/icon_kritik.png', 'Kritik & Saran'),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listWidget(String image, String keterangan) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 28,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                keterangan,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ],
      ),
    );
  }
}
