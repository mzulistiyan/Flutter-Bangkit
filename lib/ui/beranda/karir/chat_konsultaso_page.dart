import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57.0),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                'assets/person-2.png',
                width: 36,
                height: 36,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ricard Archi Santan Qassandra',
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Baru Saja',
                    style: GoogleFonts.roboto(
                        fontSize: 11, color: Color(0xff909193)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/person-2.png',
                          width: 36,
                          height: 36,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 260,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xff57737A).withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 3) // changes position of shadow
                                ),
                          ],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            topLeft: Radius.circular(1),
                          )),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ricard Archi Santan Qassandra, Ph.D',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto(
                                color: Color(0xff57737A),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '9:41',
                        style: GoogleFonts.roboto(
                          fontSize: 11,
                          color: const Color(0xff5F6162),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 260,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff85BDBF),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff57737A).withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 3) // changes position of shadow
                          ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(1),
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(8),
                      topLeft: Radius.circular(9),
                    )),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.roboto(
                          color: const Color(0xff040F0F),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/icons/icon_double_check.png',
                      width: 14,
                      height: 7,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '9:41',
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        color: const Color(0xff5F6162),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                offset: Offset(3.0, 0),
              ),
            ],
          ),
          child: TextFormField(
              decoration: InputDecoration(
            fillColor: Color(0xffF4F5F7),
            filled: true,
            hintStyle: GoogleFonts.roboto(
              color: Color(0xffCFD0D4),
              fontSize: 16,
            ),
            prefixStyle: TextStyle(color: Colors.transparent),
            hintText: 'Ketik Pesan',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            prefixIcon: Icon(
              Icons.emoji_emotions,
              size: 30,
              color: Color(0xff85BDBF),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/icons/icon_send.png',
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
