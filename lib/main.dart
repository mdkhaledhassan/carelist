import 'package:care_list/models/todo.dart';
import 'package:care_list/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'client/hive_names.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>(HiveBoxes.todo);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
            title: 'CareList',
            debugShowCheckedModeBanner: false,
            home: SplashScreen());
      },
      designSize: Size(375, 812),
    );
  }
}
