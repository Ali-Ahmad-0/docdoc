import 'package:docdoc/core/helper/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_cubit.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});
  // final Widget child;

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: AppTextStyles.font13RegBlue),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('Got it', style: AppTextStyles.font13grey400),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        // TODO: implement listener
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const SizedBox.shrink();
              },
            );
          },
          success: (SignupBlocListenerResponse) {
            context.pop();
            Navigator.pushNamed(context, Routes.homeScreen);
          },
          failure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
