import 'package:bloc/bloc.dart';
import 'package:docdoc/core/networking/api_result.dart';

import 'package:docdoc/features/signup/data/model/signup_request_body.dart';
import 'package:docdoc/features/signup/data/repo/signup_repo.dart';
import 'package:docdoc/features/signup/logic/cubit/signup_state.dart';
import 'package:flutter/widgets.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _SignupRepo;
  SignupCubit(this._SignupRepo) : super(SignupState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  void emitSignupgState() async {
    emit(SignupState.loading());
    final response = await _SignupRepo.singup(
      SignupRequestBody(
         0,
        name: nameController.text,
        phone: phoneController.text,
        confirmPassword: confirmPasswordController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (SignupResponse) async {
        emit(SignupState.success(SignupResponse));
      },
      failure: (error) {
        emit(
          SignupState.failure(
            errorMessage:
                error.apiErrorModel.message ??
                'There is something went wrong !',
          ),
        );
      },
    );
  }
}
