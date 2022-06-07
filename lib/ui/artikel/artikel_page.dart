import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({Key? key}) : super(key: key);

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage>
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
          'Artikel',
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
                    hintText: 'Cari Artikel',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 410,
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
                              'Karir',
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
                              'Keuangan',
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
                              'Kesehatan',
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
                        cardArtikel(),
                        cardArtikel(),
                        cardArtikel(),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        cardArtikel(),
                        cardArtikel(),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        cardArtikel(),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        cardArtikel(),
                        cardArtikel(),
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

  Widget cardArtikel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/banner_artikel.png'),
          Container(
            margin: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data Center Paling Guud',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Data Center adalah lorem ipsum pisum dolor sit amet lorem ceunah kata beurem mailtek its about ...',
                  style: GoogleFonts.roboto(
                    color: Color(0xff909193),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
}
