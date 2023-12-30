import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStylesName{
  static final upperCardTextStyleLM = AppTextStyles.black_20_500();
  static final upperCardTextStyleDM = AppTextStyles.white_20_500();
  static final lowerCardTextStyleLM = AppTextStyles.black_16_500();
  static final lowerCardTextStyleDM = AppTextStyles.white_16_500();
}

class AppTextStyles{
  static white_16_500(){
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamily: "Nunito"
    );
  }
  static black_16_500() {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        fontFamily: "Nunito"
    );
  }
  static white_20_500() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20.sp,
        fontFamily: "Nunito"
    );
  }
    static black_20_500(){
      return TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: "Nunito"
      );
  }
}