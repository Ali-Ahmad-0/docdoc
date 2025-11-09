import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart'
    as LoginStates;
import 'package:docdoc/features/login/ui/widgets/already_have_account.dart';
import 'package:docdoc/features/login/ui/widgets/email_and_password.dart';
import 'package:docdoc/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:docdoc/features/login/ui/widgets/remember_me_row.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
                Text('Welcome Back ', style: AppTextStyles.font24Bold),
                SizedBox(height: 8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyles.font14regular.copyWith(
                    wordSpacing: 2.sp,
                  ),
                ),
                SizedBox(height: 36.h),
                Column(children: [EmailAndPassword()]),
                SizedBox(height: 16.h),
                RememberMeRow(),
                SizedBox(height: 32.h),
                CustomButton(
                  onTap: () {
                    validateThenDoLogin(context);
                  },
                  widget: BlocBuilder<LoginCubit, LoginStates.LoginState>(
                    buildWhen: (previous, current) =>
                        current is LoginStates.Loading ||
                        current is LoginStates.Success ||
                        current is LoginStates.Failure,
                    builder: (context, state) {
                      return state.when(
                        initial: () => Text(
                          'Login',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                        loading: () => const CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        success: (loginResponse) => Text(
                          'Login',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                        failure: (error) => Text(
                          'Login',
                          style: AppTextStyles.font16whiteSemiBold,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 174.h),
                TermsAndCondition(),
                SizedBox(height: 24.h),
                AlreadyHaveAccount(),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogingState();
    }
  }
}
