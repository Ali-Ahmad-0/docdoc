import 'package:docdoc/core/helper/app_regex.dart';
import 'package:docdoc/core/themes/colors.dart';
import 'package:docdoc/core/widgets/app_textFormField.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextFields extends StatefulWidget {
  const SignupTextFields({super.key});

  @override
  State<SignupTextFields> createState() => _SignupTextFieldsState();
}

class _SignupTextFieldsState extends State<SignupTextFields> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isObsecuredText = true;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasLowercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasSpecialCharacter(passwordController.text);
        hasLowercase = AppRegex.hasNumber(passwordController.text);
        hasLowercase = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formkey,
      child: Column(
        children: [
          AppTextformfield(
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required !';
              }
            },
            controller: context.read<SignupCubit>().nameController,
          ),
          SizedBox(height: 16.h),
          AppTextformfield(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email !';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          SizedBox(height: 16.h),
          AppTextformfield(
            hasPhoneNumber: TextInputType.number,
            hintText: 'Phone number',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid phone number !';
              }
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          SizedBox(height: 16.h),
          AppTextformfield(
            controller: context.read<SignupCubit>().passwordController,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password !';
              }
            },
            isObsecured: isObsecuredText,
            hintText: 'Password',
            suffextIcons: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecuredText = !isObsecuredText;
                });
              },
              child: isObsecuredText
                  ? Icon(
                      Icons.visibility_off_outlined,
                      size: 24.sp,
                      color: ColorsManager.mainColorBlue,
                    )
                  : Icon(
                      Icons.visibility_outlined,
                      size: 24.sp,
                      color: ColorsManager.mainColorBlue,
                    ),
            ),
          ),
          SizedBox(height: 16.h),
          AppTextformfield(
            controller: context.read<SignupCubit>().confirmPasswordController,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password !';
              }
            },
            isObsecured: isObsecuredText,
            hintText: 'Confirm password',
            suffextIcons: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecuredText = !isObsecuredText;
                });
              },
              child: isObsecuredText
                  ? Icon(
                      Icons.visibility_off_outlined,
                      size: 24.sp,
                      color: ColorsManager.mainColorBlue,
                    )
                  : Icon(
                      Icons.visibility_outlined,
                      size: 24.sp,
                      color: ColorsManager.mainColorBlue,
                    ),
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }
}
