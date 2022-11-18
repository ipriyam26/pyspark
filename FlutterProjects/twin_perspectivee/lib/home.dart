import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

// alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 101.h, horizontal: 114.w),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Row(
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    // height: 74.h,
                    width: 642.w,
                    color: const Color(0xffF2F4F8),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(100.w),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
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
                    ),
                  ),
                ),
                SizedBox(width: 16.w,),
                SizedBox(
                  width: 112.w,
                  child: ElevatedButton(onPressed: null,
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20.r)),
                  textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20))), child:  Text("Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  ),



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
            children: [
              ClipRRect(
                                  borderRadius: BorderRadius.circular(12.r),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  color: Color.fromARGB(255, 212, 214, 221),
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
              ),
              Text("VS", style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  ),),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  color: Color.fromARGB(255, 212, 214, 221),
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
              )
            ],
           ),
         ) 
          ],
        ),
      ),
    );
  }
}
