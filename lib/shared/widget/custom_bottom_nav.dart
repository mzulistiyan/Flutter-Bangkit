import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/cubit/page_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNav extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String desc;

  const CustomBottomNav({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 30,
            height: 30,
            color: context.read<PageCubit>().state == index
                ? Color(0xff90F7FF)
                : Color(0xff85BDBF),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Text(
              desc,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 11,
                color: context.read<PageCubit>().state == index
                    ? Color(0xff90F7FF)
                    : Color(0xff85BDBF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
