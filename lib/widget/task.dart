import 'package:auto_size_text/auto_size_text.dart';
import 'package:care_list/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailsScreen(), type: PageTransitionType.fade));
      },
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.sp),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3.sp,
                  offset: Offset(0, 3))
            ]),
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 10.w, bottom: 10.w),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 18.sp,
                        width: 18.sp,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.sp),
                          border:
                              Border.all(color: Color(0xff613CF6), width: 1.sp),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Ajke amar mon valo nei',
                        style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FittedBox(
                      child: AutoSizeText('10:30 AM • 31 May 2023',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.ubuntu(
                              color: Color(0xffA4A4A4),
                              fontWeight: FontWeight.w300,
                              fontSize: 8.sp)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_right_rounded,
                      color: Color(0xff613CF6),
                      size: 30.sp,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
