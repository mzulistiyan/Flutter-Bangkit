import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeliinPage extends StatefulWidget {
  const BeliinPage({Key? key}) : super(key: key);

  @override
  State<BeliinPage> createState() => _BeliinPageState();
}

class _BeliinPageState extends State<BeliinPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
          'Beli-in',
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
                        Container(
                          child: GridView.count(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.6,
                              crossAxisSpacing: 20,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 0),
                              children: [
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin()
                              ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        Container(
                          child: GridView.count(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.6,
                              crossAxisSpacing: 20,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 20),
                              children: [
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin()
                              ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        Container(
                          child: GridView.count(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.6,
                              crossAxisSpacing: 20,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 20),
                              children: [
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin()
                              ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(18, 10, 18, 70),
                      children: [
                        Container(
                          child: GridView.count(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.6,
                              crossAxisSpacing: 20,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 20),
                              children: [
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin(),
                                cardBeliin()
                              ]),
                        )
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

  Widget cardBeliin() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 160,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/buku.png',
              width: 200,
            ),
            Text(
              'Buku Mind Platter Bejana Pikiran oleh ...',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rp100.100',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: const Color(0xff85BDBF),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 144,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffC2FCF7), width: 3),
              ),
              child: Container(
                child: Center(
                  child: Text(
                    '+ Tambah',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
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
