import 'package:auto_size_text/auto_size_text.dart';
import 'package:care_list/constants.dart';
import 'package:care_list/edit_task_screen.dart';
import 'package:care_list/home_screen.dart';
import 'package:care_list/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, this.res});
  final res;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            systemNavigationBarColor: Colors.white,
            statusBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.2,
            backgroundColor: Colors.white,
            leading: Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    height: 14.h,
                    width: 15.w,
                  ),
                )),
            centerTitle: true,
            title: FittedBox(
              child: AutoSizeText('Task Details',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.ubuntu(
                      color: Color(0xff494949),
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp)),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/blur_style_blue.png'),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 20.h, bottom: 20.h, left: 20.w, right: 20.w),
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Container(
                          //height: 60.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffF0F0F0),
                                width: 1.sp,
                              ),
                              borderRadius: BorderRadius.circular(10.sp)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h,
                                  bottom: 10,
                                  right: 10.w,
                                  left: 10.w),
                              child: AutoSizeText(
                                  '${widget.res.title.toString()}',
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Wrap(
                      children: [
                        Container(
                          //height: 60.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffF0F0F0),
                                width: 1.sp,
                              ),
                              borderRadius: BorderRadius.circular(10.sp)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h,
                                  bottom: 10,
                                  right: 10.w,
                                  left: 10.w),
                              child: AutoSizeText(
                                  '${widget.res.description.toString()}',
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.dialog(
                                  barrierDismissible: false,
                                  Dialog(
                                      insetPadding: EdgeInsets.all(20.sp),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: EditTaskScreen(res: widget.res),
                                      )));
                            },
                            child: PrimaryButton(text: 'Edit')),
                        InkWell(
                            onTap: () {
                              Get.dialog(
                                  barrierDismissible: false,
                                  AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      content: Container(
                                        height: 100.h,
                                        width: 150.w,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FittedBox(
                                                  child: AutoSizeText(
                                                'Do you want to delete this task?',
                                                style: GoogleFonts.ubuntu(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.sp),
                                              )),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pop(false);
                                                    },
                                                    child: Container(
                                                      height: 30.h,
                                                      width: 50.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        gradient: LinearGradient(
                                                            begin: Alignment
                                                                .topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: [
                                                              Color(0xff613CF6),
                                                              Color(0xffF42A41)
                                                                  .withOpacity(
                                                                      0.8)
                                                            ]),
                                                      ),
                                                      child: Center(
                                                        child: AutoSizeText(
                                                          'No',
                                                          style: GoogleFonts
                                                              .ubuntu(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.sp),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      widget.res.delete();
                                                      showToast(
                                                          'Task Deleted Successfully!');
                                                      Navigator.push(
                                                          context,
                                                          PageTransition(
                                                              child:
                                                                  HomeScreen(),
                                                              type:
                                                                  PageTransitionType
                                                                      .fade));
                                                    },
                                                    child: Container(
                                                      height: 30.h,
                                                      width: 50.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        gradient: LinearGradient(
                                                            begin: Alignment
                                                                .topLeft,
                                                            end: Alignment
                                                                .bottomRight,
                                                            colors: [
                                                              Color(0xff613CF6),
                                                              Color(0xffF42A41)
                                                                  .withOpacity(
                                                                      0.8)
                                                            ]),
                                                      ),
                                                      child: Center(
                                                        child: AutoSizeText(
                                                          'Yes',
                                                          style: GoogleFonts
                                                              .ubuntu(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.sp),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )));
                            },
                            child: PrimaryButton(text: 'Delete')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
