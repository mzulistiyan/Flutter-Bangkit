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
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Masuk',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Satu langkah lagi untuk dapat menikmati layanan Konsult-In',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color(0xff757575)),
              ),
              const SizedBox(
                height: 130,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.roboto(
                        color: Color(0xff757575),
                        fontSize: 14,
                      ),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Color(0xffEEEEEE),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xffBDBDBD),
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
                      hintStyle: GoogleFonts.roboto(
                        color: Color(0xff757575),
                        fontSize: 14,
                      ),
                      hintText: 'Kata Sandi',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Color(0xffEEEEEE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xffBDBDBD),
                      ),
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
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
                      color: const Color(0xffCC4950),
                      fontWeight: FontWeight.w400,
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
                  color: checkedValue == false
                      ? Color(0xffF5DBDC)
                      : Color(0xffCC4950),
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
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
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
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
