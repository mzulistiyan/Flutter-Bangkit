import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/cubit/page_cubit.dart';

import 'package:flutter_application_bangkit_capstone/ui/onboarding_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/splash_screen_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart'
    as transition;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: const GetMaterialApp(
        defaultTransition: transition.Transition.cupertino,
        debugShowCheckedModeBanner: false,
        home: SplashScreenPage(),
      ),
    );
  }
}
