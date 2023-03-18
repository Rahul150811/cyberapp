// ignore_for_file: deprecated_member_use

/// This File Contains app theme

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xff3ac4ac),
      fontFamily: "Open Sans",
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      accentColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
          titleTextStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade50,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.r)),
        hintStyle: TextStyle(
          fontSize: 14.sp,
        ),
      ),
      cardColor: Colors.grey.shade200,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.red),
      textTheme: TextTheme(
          headline1: TextStyle(
              letterSpacing: -1.5,
              fontSize: 48.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              letterSpacing: -1.0,
              fontSize: 40.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 32.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          headline4: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 28.sp,
              fontWeight: FontWeight.w600),
          headline5: TextStyle(
              letterSpacing: -1.0,
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500),
          headline6: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600),
          subtitle1: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
          subtitle2: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
          bodyText1: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
          button: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600),
          caption: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400),
          overline: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5)));

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Open Sans",
    primaryColor: const Color(0xff658af7),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey[900],
    bottomAppBarColor: Colors.grey[800],
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.r)),
        hintStyle: TextStyle(
          fontSize: 14.sp,
        )),
    cardColor: const Color.fromARGB(255, 43, 43, 43),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
        headline1: TextStyle(
            letterSpacing: -1.5,
            fontSize: 48.sp,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline2: TextStyle(
            letterSpacing: -1.0,
            fontSize: 40.sp,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline3: TextStyle(
            letterSpacing: -1.0,
            fontSize: 32.sp,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline4: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 28.sp,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 24.sp,
            fontWeight: FontWeight.w500),
        headline6: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 24.sp,
            fontWeight: FontWeight.w500),
        subtitle1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500),
        subtitle2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400),
        bodyText2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400),
        button: TextStyle(
            color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w600),
        caption: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500),
        overline: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 10.sp,
            fontWeight: FontWeight.w400)),
  );
}
