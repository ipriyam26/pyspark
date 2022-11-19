import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twin_perspectivee/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  GetMaterialApp(
            title: 'Flutter Demo',
            home:  HomeScreen());
      },
    );
  }
}




