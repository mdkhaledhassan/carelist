import 'package:auto_size_text/auto_size_text.dart';
import 'package:care_list/add_task_screen.dart';
import 'package:care_list/widget/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> onBackPressed() {
    return Get.dialog(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                        child: AutoSizeText(
                      'Do you want to exit the App?',
                      style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp),
                    )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Container(
                            height: 30.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff613CF6),
                                    Color(0xffF42A41).withOpacity(0.8)
                                  ]),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                'No',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            SystemNavigator.pop();
                          },
                          child: Container(
                            height: 30.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff613CF6),
                                    Color(0xffF42A41).withOpacity(0.8)
                                  ]),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                'Yes',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPressed,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
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
            leadingWidth: 150.w,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
              child: Row(
                children: [
                  FittedBox(
                    child: AutoSizeText('My Tasks',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.ubuntu(
                            color: Color(0xff494949),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 25.sp,
                    width: 25.sp,
                    decoration: BoxDecoration(
                        color: Color(0xff613CF6),
                        borderRadius: BorderRadius.circular(30.sp)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.sp),
                        child: FittedBox(
                          child: AutoSizeText('5',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.sp)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 10.h, bottom: 10.h),
                child: PopupMenuButton(
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        onTap: () {},
                        child: Text("Delete All Tasks",
                            style: GoogleFonts.ubuntu(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp))),
                  ],
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    height: 17.h,
                    width: 30.w,
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: InkWell(
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
                        padding: MediaQuery.of(context).viewInsets,
                        child: AddTaskScreen(),
                      )));
            },
            child: Container(
              height: 50.sp,
              width: 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.sp),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff613CF6),
                      Color(0xffF42A41).withOpacity(0.8)
                    ]),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30.sp,
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/blur_style_blue.png'),
                          fit: BoxFit.cover)),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        top: 20.h,
                      ),
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: Task(),
                              );
                            },
                          )
                          // SvgPicture.asset(
                          //   'assets/images/to_do.svg',
                          //   height: 200.h,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
