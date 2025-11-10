import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/login/ui/widgets/remember_me_row.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_condition.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_cubit.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_state.dart';
import 'package:docdoc/features/signup/ui/widgets/already_have_account.dart';
import 'package:docdoc/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:docdoc/features/signup/ui/widgets/signup_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final fromKey = GlobalKey<FormState>();

  bool isObsecured = false;

  bool? check1 = false;
  // true for checked, false for unchecked
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
                Text('Create Account', style: AppTextStyles.font24Bold),
                SizedBox(height: 8.h),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14regular.copyWith(
                    wordSpacing: 2.sp,
                  ),
                ),
                SizedBox(height: 17.h),
                SignupTextFields(),
                SizedBox(height: 24.h),
                CustomButton(
                  onTap: () {
                    validateThenDoSignup(context);
                  },
                  widget: BlocBuilder<SignupCubit, SignupState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => Text(
                          'Create Account',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                        loading: () => const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        success: (SignupResponse) => Text(
                          'Create Account',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                        failure: (error) => Text(
                          'Create Account',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24.h),
                TermsAndCondition(),
                SizedBox(height: 24.h),
                AlreadyHaveAccount(),
                SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formkey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupgState();
    }
  }
}
