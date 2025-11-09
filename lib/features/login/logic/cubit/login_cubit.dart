import 'package:bloc/bloc.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/repo/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart'
    show LoginState;
import 'package:flutter/widgets.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  void emitLogingState() async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(
          LoginState.failure(
            errorMessage:
                error.apiErrorModel.message ??
                'There is something went wrong !',
          ),
        );
      },
    );
  }
}
