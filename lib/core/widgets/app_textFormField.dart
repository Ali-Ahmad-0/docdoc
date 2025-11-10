import 'package:docdoc/core/themes/colors.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield({
    super.key,
    this.isObsecured,
    required this.hintText,
    this.suffextIcons,
    this.controller,
    required this.validator, this.hasPhoneNumber,
  });
  final bool? isObsecured;
  final String? hintText;
  final Widget? suffextIcons;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? hasPhoneNumber;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      controller: controller,
      cursorColor: Colors.black,
      cursorOpacityAnimates: true,
      keyboardType: hasPhoneNumber,
      obscureText: isObsecured ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.white10,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        isDense: true,
        labelText: hintText,
        labelStyle: AppTextStyles.font14MediumGrey,
        hintStyle: AppTextStyles.font14MediumGrey,

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),

          borderSide: BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: ColorsManager.mainColorBlue,
            width: 1.3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManager.grey30, width: 1.3),
        ),
        suffixIcon: suffextIcons,
      ),
    );
  }
}
