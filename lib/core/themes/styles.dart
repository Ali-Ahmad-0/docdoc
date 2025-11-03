import 'package:docdoc/core/themes/colors.dart';
import 'package:docdoc/core/themes/fonts_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font26BlackBold = TextStyle(
    color: Color(0xff242424),
    fontSize: 26.sp,
    fontWeight: FontsWeightHelper.bold,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: Color(0xff247CFF),
    fontSize: 32.sp,
    fontWeight: FontsWeightHelper.bold,
  );
  static TextStyle font13grey400 = TextStyle(
    color: ColorsManager.grey70,
    fontSize: 10.sp,
    fontWeight: FontsWeightHelper.normal,
  );
  static TextStyle font16whiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontsWeightHelper.semiBold,
  );
  static TextStyle font24semiBold = TextStyle(
    color: ColorsManager.mainColorBlue,
    fontSize: 24.sp,
    fontWeight: FontsWeightHelper.semiBold,
  );
  static TextStyle font24Bold = TextStyle(
    color: ColorsManager.mainColorBlue,
    fontSize: 24.sp,
    fontWeight: FontsWeightHelper.bold,
  );
  static TextStyle font14regular = TextStyle(
    color: ColorsManager.grey70,
    fontSize: 14.sp,
    fontWeight: FontsWeightHelper.normal,
  );
  static TextStyle font14MediumGrey = TextStyle(
    color: ColorsManager.grey70,
    fontSize: 14.sp,
    fontWeight: FontsWeightHelper.medium,
  );
  static TextStyle font13RegBlue = TextStyle(
    color: ColorsManager.mainColorBlue,
    fontSize: 13.sp,
    fontWeight: FontsWeightHelper.normal,
  );
  static TextStyle font12GreyRegular = TextStyle(
    color: ColorsManager.grey60,
    fontSize: 12.sp,
    fontWeight: FontsWeightHelper.normal,
  );
  static TextStyle font12DarkGrey = TextStyle(
    color: ColorsManager.darkgrey,
    fontSize: 12.sp,
    fontWeight: FontsWeightHelper.normal,
  );
}
