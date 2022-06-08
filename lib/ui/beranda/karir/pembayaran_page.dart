import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/karir/menunggu_pembayaran_page.dart';
import 'package:get/route_manager.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return _showDialogMetode();
                      },
                    );
                  },
                  child: Text(
                    'Lihat Semua',
                    style: GoogleFonts.roboto(
                      color: const Color(0xff85BDBF),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            pilihMetode('assets/icons/icon_bni.png', 'BNI Virtual Account', 1),
            const Divider(
              thickness: 1,
            ),
            pilihMetode('assets/icons/icon_bca.png', 'BCA Virtual Account', 2),
            const Divider(
              thickness: 1,
            ),
            pilihMetode('assets/icons/icon_bri.png', 'BRI Virtual Account', 3),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ringkasan pembayaran',
              style: GoogleFonts.roboto(
                color: const Color(0xff040F0F),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total tagihan',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff787878),
                  ),
                ),
                Text(
                  'Rp. 50.000',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff787878),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biaya layanan',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff787878),
                  ),
                ),
                Text(
                  'Rp. 0',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff787878),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(3.0, 0),
            ),
          ],
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Bayar',
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Rp. 50.000',
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff85BDBF)),
                )
              ],
            ),
            Container(
              width: 168,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xffC2FCF7),
                borderRadius: BorderRadius.circular(17.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(const MenungguPembayaran());
                },
                child: Text(
                  'BAYAR',
                  style: GoogleFonts.poppins(
                    color: Color(0xff57737A),
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _showDialogMetode() {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.close,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Pilih Metode Pembayaran',
                  style: GoogleFonts.roboto(
                    color: const Color(0xff040F0F),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Transfer Virtual Account',
              style: GoogleFonts.roboto(
                color: const Color(0xff040F0F),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_bni.png',
              'BNI Virtual Account',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_bca.png',
              'BCA Virtual Account',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_bri.png',
              'BRI Virtual Account',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_mandiri.png',
              'Mandiri Virtual Account',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_cimb.png',
              'CIMB Virtual Account',
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Transfer Dompet Virtual',
              style: GoogleFonts.roboto(
                color: const Color(0xff040F0F),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_gopay.png',
              'Go-Pay',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_jenius.png',
              'Jenius',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_linkaja.png',
              'LinkAja',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_dana.png',
              'Dana',
            ),
            const Divider(
              thickness: 1,
            ),
            pilihMetodePembayaran(
              'assets/icons/icon_ovo.png',
              'Ovo',
            ),
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
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
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
          ),
        ),
      ],
    );
  }

  Widget pilihMetodePembayaran(
    String image,
    String bank,
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
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios_sharp,
          size: 15,
        )
      ],
    );
  }
}
