import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PembayaranPage extends StatefulWidget {
  const PembayaranPage({Key? key}) : super(key: key);

  @override
  State<PembayaranPage> createState() => _PembayaranPageState();
}

class _PembayaranPageState extends State<PembayaranPage> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Pembayaran',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Metode pembayaran',
                  style: GoogleFonts.roboto(
                    color: const Color(0xff040F0F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: GoogleFonts.roboto(
                    color: const Color(0xff85BDBF),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            pilihMetode('assets/icons/icon_bni.png', 'BNI Virtual Account', 1),
            Divider(
              thickness: 1,
            ),
            pilihMetode('assets/icons/icon_bca.png', 'BCA Virtual Account', 2),
            Divider(
              thickness: 1,
            ),
            pilihMetode('assets/icons/icon_bri.png', 'BRI Virtual Account', 3),
          ],
        ),
      ),
    );
  }

  Widget pilihMetode(
    String image,
    String bank,
    int value,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              image,
              width: 52,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              bank,
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Container(
            height: 60,
            width: 50,
            child: Radio(
              activeColor: const Color(0xff85BDBF),
              value: value,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value as int?;
                });
              },
            )),
      ],
    );
  }
}
