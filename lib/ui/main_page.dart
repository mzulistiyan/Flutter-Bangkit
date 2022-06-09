import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/cubit/page_cubit.dart';
import 'package:flutter_application_bangkit_capstone/shared/widget/custom_bottom_nav.dart';
import 'package:flutter_application_bangkit_capstone/ui/artikel/artikel_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/beliin/beliin_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/beranda/beranda_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/profile/profile_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/riwayat/riwayat_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return BerandaPage();
          break;
        case 1:
          return RiwayatPage();
          break;
        case 2:
          return BeliinPage();
          break;
        case 3:
          return ArtikelPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return BerandaPage();
      }
    }

    Widget CustomButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 0, left: 12, right: 12, top: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNav(
                index: 0,
                imageUrl: 'assets/icons/icon_home.png',
                desc: 'Beranda',
              ),
              CustomBottomNav(
                index: 1,
                imageUrl: 'assets/icons/icon_riwayat_nav.png',
                desc: 'Riwayat',
              ),
              CustomBottomNav(
                index: 2,
                imageUrl: 'assets/icons/icon_shopping.png',
                desc: 'Beli-in',
              ),
              CustomBottomNav(
                index: 3,
                imageUrl: 'assets/icons/icon_book-open.png',
                desc: 'Artikel',
              ),
              CustomBottomNav(
                index: 4,
                imageUrl: 'assets/icons/icon_user.png',
                desc: 'Akun',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              buildContent(currentIndex),
              CustomButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
