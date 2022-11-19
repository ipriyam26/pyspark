import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twin_perspectivee/controller/query_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  QueryController queryController = Get.put(QueryController());
  @override
  Widget build(BuildContext context) {
    final spinKit = SpinKitPouringHourGlass(
      color: Colors.black,
      size: 70.w,
    );
    bool isLoading = false;
    var VSText = Text(
      "VS",
      style: TextStyle(
        color: Colors.black,
        fontFamily: GoogleFonts.openSans().fontFamily,
        fontSize: 40.sp,
        fontWeight: FontWeight.w700,
      ),
    );
    var SearchText = Text(
      "Search",
      style: TextStyle(
        color: Colors.white,
        fontFamily: GoogleFonts.openSans().fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
      ),
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 101.h, horizontal: 114.w),
        child: GetBuilder<QueryController>(builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Container(
                      width: 642.w,
                      color: const Color(0xffF2F4F8),
                      child: Obx(() => TextFormField(
                            initialValue: queryController.query.value,
                            onChanged: (value) {
                              queryController.updateQuery(value);
                              
                            },
                            scrollPadding: EdgeInsets.all(100.w),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 24.w,
                              ),
                              fillColor: const Color(0xffF2F4F8),
                              border: InputBorder.none,
                              hintText: "Article name or keywords...",
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SizedBox(
                    width: 112.w,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.clearQuery();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20.r)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 20))),
                      child: SearchText,
                    ),
                  )
                ],
              ),
              Container(
                // color: Colors.pink,
                margin: EdgeInsets.only(top: 40.h),
                width: 600.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Split(), VSText, const Split()],
                ),
              ),
              SizedBox(
                height: isLoading ? 200.h : 40.h,
              ),
              isLoading
                  ? Center(
                      child: spinKit,
                    )
                  : Container(
                      height: 600.h,
                      width: 1200.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Cardd(
                            tt: """
        Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.""",
                            color: Color(0xff8FDB92),
                            isPositive: true,
                          ),
                          const Cardd(
                            tt: """
        Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.Lorem ipsum dolor sit amet consectetur. Nibh dui tempor mauris lorem turpis elementum ipsum sed. Sed felis lectus tincidunt sit euismod purus. Odio viverra et sit montes proin. Feugiat tellus quam sem quam eget at.""",
                            color: Color(0xffF17474),
                            isPositive: false,
                          ),
                        ],
                      ),
                    )
            ],
          );
        }),
      ),
    );
  }
}

class Cardd extends StatelessWidget {
  const Cardd({
    required this.color,
    required this.tt,
    required this.isPositive,
    Key? key,
  }) : super(key: key);

  final Color color;
  final String tt;
  final bool isPositive;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: isPositive ? Alignment.bottomLeft : Alignment.topRight,
      children: [
        Material(
          elevation: 5,
          color: color,
          borderRadius: BorderRadius.circular(15.r),
          child: Container(
            width: 542.w,
            height: 587.h,
            padding: EdgeInsets.all(52.w),
            child: Text(
              tt,
              style: TextStyle(
                color: Colors.white,
                fontFamily: GoogleFonts.openSans().fontFamily,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        !isPositive
            ? Positioned(
                top: -20.h,
                right: -20.w,
                child: ClipOval(
                  child: Material(
                    color: Colors.grey,
                    elevation: 70,
                    child: Container(
                      width: 80.w,
                      height: 80.w,
                      padding: EdgeInsets.all(10.w),
                      color: Colors.white,
                      child: Image.asset(
                        "assets/down.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            : Positioned(
                left: -20.w,
                bottom: -20.h,
                child: ClipOval(
                  child: Material(
                    shadowColor: Colors.grey,
                    elevation: 70,
                    child: Container(
                      width: 80.w,
                      height: 80.w,
                      padding: EdgeInsets.all(10.w),
                      color: Colors.white,
                      child: Image.asset(
                        "assets/up.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
      ],
    );
  }
}

class Split extends StatelessWidget {
  const Split({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        color: const Color.fromARGB(255, 212, 214, 221),
        width: 140.w,
        child: TextField(
          textAlign: TextAlign.center,
          // scrollPadding: EdgeInsets.all(100.w),
          decoration: InputDecoration(
            fillColor: const Color(0xffF2F4F8),
            border: InputBorder.none,
            hintText: "Query",
            hintStyle: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.openSans().fontFamily,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
