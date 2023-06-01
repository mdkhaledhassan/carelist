import 'package:auto_size_text/auto_size_text.dart';
import 'package:care_list/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 480.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.sp)),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: FittedBox(
                    child: AutoSizeText('Add Task',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.ubuntu(
                            color: Color(0xff494949),
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        AutoSizeText('Task Title',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ubuntu(
                                color: Color(0xff494949),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp)),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                          // controller: text,
                          // validator: (value) {
                          //   if (text.text.isEmpty)
                          //     return 'Please Input Some Text.';
                          // },
                          style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16.sp),
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.black,
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: 10.h,
                                bottom: 10.h,
                                left: 19.w,
                                right: 19.w),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your title',
                            hintStyle: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AutoSizeText('Task Description',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ubuntu(
                                color: Color(0xff494949),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp)),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                          // controller: text,
                          // validator: (value) {
                          //   if (text.text.isEmpty)
                          //     return 'Please Input Some Text.';
                          // },
                          style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16.sp),

                          keyboardType: TextInputType.text,
                          cursorColor: Colors.black,
                          maxLines: 10,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: 10.h,
                                bottom: 10.h,
                                left: 19.w,
                                right: 19.w),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffD9D9D9), width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Task description',
                            hintStyle: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Container(
                            height: 40.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff613CF6),
                                    Color(0xffF42A41).withOpacity(0.8)
                                  ]),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: AutoSizeText('Add Task',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 25.sp,
              width: 25.sp,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100.sp),
                  border: Border.all(color: Colors.red, width: 1.sp)),
              child: Center(
                child: Icon(
                  Icons.close,
                  color: Colors.red,
                  size: 20.sp,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
