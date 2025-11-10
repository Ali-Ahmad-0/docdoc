// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      (json['gender'] as num).toInt(),
      name: json['name'] as String,
      confirmPassword: json['password_confirmation'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'password_confirmation': instance.confirmPassword,
      'phone': instance.phone,
      'gender': instance.gender,
    };
