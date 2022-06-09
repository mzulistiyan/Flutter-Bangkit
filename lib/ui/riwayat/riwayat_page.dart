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
    _tabController!.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
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
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    width: 350,
                    height: 30,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: GoogleFonts.poppins(color: Colors.black),
                      unselectedLabelColor: Color(0xff757575),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffCC4950),
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
                                color: _tabController!.index == 0
                                    ? Colors.transparent
                                    : Color(0xffBDBDBD),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Semua',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: _tabController!.index == 1
                                    ? Colors.transparent
                                    : Color(0xffBDBDBD),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Berhasil',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: _tabController!.index == 2
                                    ? Colors.transparent
                                    : Color(0xffBDBDBD),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Menunggu',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: _tabController!.index == 3
                                    ? Colors.transparent
                                    : Color(0xffBDBDBD),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Gagal',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                              ),
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
                        card(
                          0,
                          'assets/career.png',
                        ),
                        card(
                          1,
                          'assets/career.png',
                        ),
                        card(
                          2,
                          'assets/career.png',
                        ),
                        card(0, 'assets/career.png'),
                        card(
                          1,
                          'assets/career.png',
                        ),
                        card(
                          2,
                          'assets/career.png',
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
                          'assets/career.png',
                        ),
                        card(
                          0,
                          'assets/career.png',
                        ),
                        card(
                          0,
                          'assets/career.png',
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
                          'assets/career.png',
                        ),
                        card(
                          1,
                          'assets/career.png',
                        ),
                        card(
                          1,
                          'assets/career.png',
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
                          'assets/career.png',
                        ),
                        card(
                          2,
                          'assets/career.png',
                        ),
                        card(
                          2,
                          'assets/career.png',
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
      padding: EdgeInsets.fromLTRB(
        7,
        5,
        5,
        0,
      ),
      width: 335,
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                    Container(
                      child: Stack(
                        children: [
                          Image.asset(
                            image,
                            width: 130,
                            height: 110,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 6),
                            width: indicator == 0
                                ? 70
                                : indicator == 1
                                    ? 85
                                    : indicator == 2
                                        ? 60
                                        : 0,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: indicator == 0
                                    ? Color(0xffD3FFDC)
                                    : indicator == 1
                                        ? Color(0xffF8E3AE)
                                        : indicator == 2
                                            ? Color(0xffF8AEAE)
                                            : Colors.green),
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
                                                : Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Konsultasi Persiapan Karir',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Oleh Ricard Archi Santan Qassandra, P...',
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Senin, 9 Mei 2022 | 19:00 WIB',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff757575),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Rp 50.000',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffCC4950),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
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
