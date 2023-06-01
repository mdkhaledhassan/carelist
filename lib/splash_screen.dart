import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:care_list/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          PageTransition(child: HomeScreen(), type: PageTransitionType.fade));
    });

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/todo.png',
                height: 150.h,
                width: 150.w,
              ),
              FittedBox(
                child: AutoSizeText('CareList',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                        color: Color(0xff494949),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
