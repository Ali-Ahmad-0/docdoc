import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/signup/data/model/signup_request_body.dart';
import 'package:docdoc/features/signup/data/model/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> singup(SignupRequestBody signupRequest) async {
    try {
      final response = await _apiService.signup(signupRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
