import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/beranda_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/main_page.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffC4C4C4),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffC4C4C4), width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffC4C4C4),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffC4C4C4), width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Checkbox(
                              value: checkedValue,
                              onChanged: (newValue) {
                                setState(() {
                                  checkedValue = newValue;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Ingat saya',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Lupa Kata Sandi ?',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff85BDBF),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: const Color(0xffC2FCF7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(const MainPage());
                    },
                    child: Text(
                      'MASUK',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff57737A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Daftar disini',
                      style: GoogleFonts.roboto(
                        color: const Color(0xff85BDBF),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 2,
                      color: Colors.black,
                    ),
                    Text(
                      'atau',
                      style:
                          GoogleFonts.poppins(color: const Color(0xff57737A)),
                    ),
                    Container(
                      width: 140,
                      height: 2,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/icon_google.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icon_facebook.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icon_linkdin.png',
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text('v 1.0.0')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
