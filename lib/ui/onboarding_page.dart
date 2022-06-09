import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/login_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageStep extends StatefulWidget {
  const OnboardingPageStep({Key? key}) : super(key: key);

  @override
  State<OnboardingPageStep> createState() => _OnboardingPageStepState();
}

class _OnboardingPageStepState extends State<OnboardingPageStep> {
  final controllerSlide = CarouselController();
  int currentIndex = 0;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    List imgList = [
      'assets/icon_onboarding_page_1.png',
      'assets/icon_onboarding_page_2.png',
      'assets/icon_onboarding_page_3.png',
    ];

    List textHeader = [
      'Selamat Datang Kawan,\nKonsult-In',
      'Konsultasi Apa Aja, Dimana Aja, dan Kapan Aja',
      'Rekomendasi Solusi',
    ];

    List textDesc = [
      'Kami sangat senang bisa menyediakan kebutuhan Konsultasi mu disini',
      'Tersedia berbagai macam Bidang Konsultasi dan Kamu bisa konsultasi kapan pun yang kamu mau',
      'Kami memiliki berbagai macam pakar yang ahli dan siap memberikan solusi yang kamu butuhkan',
    ];
    void next() => controllerSlide.nextPage(
            duration: const Duration(
          milliseconds: 300,
        ));
    void back() => controllerSlide.previousPage(
            duration: const Duration(
          milliseconds: 300,
        ));

    Widget buildButtons() => Column(
          children: [
            SizedBox(
              width: 55,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffCC4950),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: activeIndex == 2
                      ? () {
                          Get.to(const LoginPage());
                        }
                      : next,
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        );

    Widget buildButtonsLogin() => Column(
          children: [
            SizedBox(
              width: 124,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffCC4950),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Get.to(const LoginPage());
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mulai',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )),
            )
          ],
        );

    Widget buildButtonBack() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: activeIndex > 0 ? back : () {},
              child: Icon(
                Icons.arrow_back_sharp,
                size: 36,
                color: activeIndex > 0 ? Colors.grey : Colors.transparent,
              ),
            )
          ],
        );

    Widget buildImage(
            String imgList, int index, String textHead, String textDesc) =>
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imgList,
                width: 350,
                height: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                textHead,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(textDesc,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 12)),
            ],
          ),
        );

    Widget buildIndicator() => AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: imgList.length,
          effect: const ExpandingDotsEffect(
            dotHeight: 10,
            dotWidth: 10,
            dotColor: Color(0xffEEC2C5),
            activeDotColor: Color(0xffAA3D43),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
        child: ListView(
          children: [
            CarouselSlider.builder(
                carouselController: controllerSlide,
                itemCount: imgList.length,
                options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  viewportFraction: 1,
                  height: 470,
                ),
                itemBuilder: (context, index, realIndex) {
                  final img = imgList[index];
                  final textHead = textHeader[index];
                  final textDescript = textDesc[index];
                  return buildImage(
                    img,
                    index,
                    textHead,
                    textDescript,
                  );
                }),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 50,
              child: buildIndicator(),
            ),
            activeIndex == 2
                ? Container(
                    height: 60,
                    width: 120,
                    child: buildButtonsLogin(),
                  )
                : Container(
                    height: 60,
                    width: 60,
                    child: buildButtons(),
                  ),
          ],
        ),
      ),
    );
  }

  Widget indicator(int index) {
    return Container(
      width: currentIndex == index ? 16 : 4,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? Color(0xffC2FCF7) : Color(0xffc4c4c4)),
    );
  }
}
