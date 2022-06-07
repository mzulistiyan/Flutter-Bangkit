import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Riwayat Transaksi',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffB4B4BC),
                      size: 22,
                    ),
                    fillColor: Color(0xffF5F6F7),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    filled: true,
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Cari Transaksi',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    width: 400,
                    height: 30,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: GoogleFonts.poppins(color: Color(0xff85BDBF)),
                      unselectedLabelColor: Colors.blue,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffC2FCF7),
                      ),
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xffF4F5F7),
                                )),
                            child: Center(
                                child: Text(
                              'Semua',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff727375)),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xffF4F5F7),
                                )),
                            child: Center(
                                child: Text(
                              'Berhasil',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff727375)),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xffF4F5F7),
                                )),
                            child: Center(
                                child: Text(
                              'Menunggu',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff727375)),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xffF4F5F7),
                                )),
                            child: Center(
                                child: Text(
                              'Gagal',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff727375)),
                            )),
                          ),
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TabBarView(
                children: [
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        card(0, 'assets/banner_finance.png'),
                        card(
                          1,
                          'assets/banner_finance.png',
                        ),
                        card(
                          2,
                          'assets/banner_mental.png',
                        ),
                        card(0, 'assets/banner_career.png'),
                        card(
                          1,
                          'assets/banner_finance.png',
                        ),
                        card(
                          2,
                          'assets/banner_mental.png',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        card(
                          0,
                          'assets/banner_finance.png',
                        ),
                        card(
                          0,
                          'assets/banner_career.png',
                        ),
                        card(
                          0,
                          'assets/banner_mental.png',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        card(
                          1,
                          'assets/banner_finance.png',
                        ),
                        card(
                          1,
                          'assets/banner_career.png',
                        ),
                        card(
                          1,
                          'assets/banner_mental.png',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        card(
                          2,
                          'assets/banner_finance.png',
                        ),
                        card(
                          2,
                          'assets/banner_career.png',
                        ),
                        card(
                          2,
                          'assets/banner_mental.png',
                        ),
                      ],
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget card(
    int indicator,
    String image,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 335,
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      image,
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Total Harga',
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Color(0xff909193)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Rp. 50.000',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff85BDBF)),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Konsultasi Persiapan Karir',
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Oleh Ricard Archi Santan Qassandra, P...',
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff909193),
                      ),
                    ),
                    Text(
                      'Senin, 9 Mei 2022 - 19:00 WIB',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 200,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: indicator == 0
                              ? Color(0xffD3FFDC)
                              : indicator == 1
                                  ? Color(0xffF8E3AE)
                                  : indicator == 2
                                      ? Color(0xffF8AEAE)
                                      : Colors.transparent),
                      child: Center(
                        child: Text(
                          indicator == 0
                              ? 'Berhasil'
                              : indicator == 1
                                  ? 'Menunggu'
                                  : indicator == 2
                                      ? 'Gagal'
                                      : '',
                          style: GoogleFonts.roboto(
                              color: indicator == 0
                                  ? Color(0xff2CA033)
                                  : indicator == 1
                                      ? Color(0xffE76C2B)
                                      : indicator == 2
                                          ? Color(0xffE52E2E)
                                          : Colors.transparent),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.more_vert_rounded,
                          color: Color(0xff85BDBF),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
}
