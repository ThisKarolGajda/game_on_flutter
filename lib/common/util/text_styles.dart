import 'package:flutter/material.dart';
import 'package:game_on/common/util/color_util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextStyles {
  static TextStyle xs() => TextStyle(
    fontWeight: FontWeight.w300,
    color: text,
    fontSize: 14.sp,
    fontFamily: 'Lexend',
    height: 5/4,
  );

  static TextStyle sm() => TextStyle(
    fontWeight: FontWeight.w400,
    color: text,
    fontSize: 15.sp,
    fontFamily: 'Lexend',
    height: 1.25,
  );

  static TextStyle base() => TextStyle(
    fontWeight: FontWeight.w500,
    color: text,
    fontSize: 16.sp,
    fontFamily: 'Lexend',
    height: 3/2,
  );

  static TextStyle lg() => TextStyle(
    fontWeight: FontWeight.w500,
    color: text,
    fontSize: 18.sp,
    fontFamily: 'Lexend',
    height: 3/2,
  );

  static TextStyle xl() => TextStyle(
    fontSize: 19.sp,
    fontFamily: 'Lexend',
    fontWeight: FontWeight.w600,
    height: 3/2,
    color: text,
  );

  static TextStyle xxl() => TextStyle(
    fontSize: 21.sp,
    fontFamily: 'Lexend',
    fontWeight: FontWeight.w700,
    height: 3/2,
    color: text,
  );

  static TextStyle xxxl() => TextStyle(
    fontSize: 23.sp,
    fontFamily: 'Lexend',
    fontWeight: FontWeight.w800,
    height: 1.25,
    color: text,
  );
}