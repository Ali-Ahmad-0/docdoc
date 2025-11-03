import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/colors.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/app_textFormField.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_account.dart';
import 'package:docdoc/features/login/ui/widgets/remember_me_row.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_condition.dart';
import 'package:docdoc/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();
  bool isObsecured = false;
  bool? check1 = false; // true for checked, false for unchecked

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Text('Welcome Back ', style: AppTextStyles.font24Bold),
                SizedBox(height: 8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyles.font14regular.copyWith(
                    wordSpacing: 2.sp,
                  ),
                ),
                SizedBox(height: 36.h),
                Form(
                  key: fromKey,
                  child: Column(
                    children: [
                      AppTextformfield(isObsecured: false, hintText: 'Email'),
                      SizedBox(height: 16.h),
                      AppTextformfield(
                        isObsecured: isObsecured,
                        hintText: 'Password',
                        suffextIcons: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsecured = !isObsecured;
                            });
                          },
                          child: isObsecured
                              ? Icon(
                                  Icons.visibility_outlined,
                                  size: 24.sp,
                                  color: ColorsManager.mainColorBlue,
                                )
                              : Icon(
                                  Icons.visibility_off_outlined,
                                  size: 24.sp,
                                  color: ColorsManager.mainColorBlue,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                RememberMeRow(),
                SizedBox(height: 32.h),
                GetStartedButton(
                  text: 'Login',
                  onTap: () =>
                      Navigator.pushNamed(context, Routes.onBoardingScreen),
                ),
                SizedBox(height: 174.h),
                TermsAndCondition(),
                SizedBox(height: 24.h),
                AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
