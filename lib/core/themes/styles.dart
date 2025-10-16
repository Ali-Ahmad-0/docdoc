import 'package:docdoc/core/themes/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle font26BlackBold = TextStyle(
    color: Color(0xff242424),
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: Color(0xff247CFF),
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font13grey400 = TextStyle(
    color: ColorsManager().grey70,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16white600 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
