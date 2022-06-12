import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 80),
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffCC4950).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
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
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  listWidget(
                      'assets/icons/icon_setting.png', 'Pengaturan Akun'),
                  listWidget('assets/riwayat.png', 'Riwayat Konsultasi'),
                  listWidget('assets/kode.png', 'Kode Referral'),
                  listWidget('assets/percent.png', 'Kupon Promo'),
                  listWidget('assets/help-circle.png', 'Bantuan'),
                  listWidget('assets/list.png', 'Syarat & Ketentuan'),
                  listWidget('assets/shield-off.png', 'Kebijakan Privasi'),
                  listWidget('assets/kritik.png', 'Kritik & Saran'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffCC4950),
                  width: 2,
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Keluar',
                  style: GoogleFonts.roboto(
                    color: Color(0xffCC4950),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listWidget(String image, String keterangan) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xffCC4950).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 28,
                  color: Color(0xffBDBDBD),
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
              color: Color(0xffCC4950),
            ),
          ],
        ),
      ),
    );
  }
}
