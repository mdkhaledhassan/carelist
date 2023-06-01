import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 120.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff613CF6), Color(0xffF42A41).withOpacity(0.8)]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: AutoSizeText('${text}',
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp)),
      ),
    );
  }
}
