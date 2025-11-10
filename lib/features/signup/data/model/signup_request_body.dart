import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String email;
  final String password;
  final String name;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  final String phone;
  final int gender;

  SignupRequestBody(this.gender,{ required this.name,required this.confirmPassword,required this.phone,  required this.email, required this.password});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
