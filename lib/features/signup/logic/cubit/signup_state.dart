import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = LoadingSignup;
  const factory SignupState.success(T data) = SuccessSignup<T>;
  const factory SignupState.failure({required String errorMessage}) = FailureSignup;

}
