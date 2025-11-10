// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>()';
}


}

/// @nodoc
class $SignupStateCopyWith<T,$Res>  {
$SignupStateCopyWith(SignupState<T> _, $Res Function(SignupState<T>) __);
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns<T> on SignupState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LoadingSignup<T> value)?  loading,TResult Function( SuccessSignup<T> value)?  success,TResult Function( FailureSignup<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingSignup() when loading != null:
return loading(_that);case SuccessSignup() when success != null:
return success(_that);case FailureSignup() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LoadingSignup<T> value)  loading,required TResult Function( SuccessSignup<T> value)  success,required TResult Function( FailureSignup<T> value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingSignup():
return loading(_that);case SuccessSignup():
return success(_that);case FailureSignup():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LoadingSignup<T> value)?  loading,TResult? Function( SuccessSignup<T> value)?  success,TResult? Function( FailureSignup<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingSignup() when loading != null:
return loading(_that);case SuccessSignup() when success != null:
return success(_that);case FailureSignup() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingSignup() when loading != null:
return loading();case SuccessSignup() when success != null:
return success(_that.data);case FailureSignup() when failure != null:
return failure(_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingSignup():
return loading();case SuccessSignup():
return success(_that.data);case FailureSignup():
return failure(_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingSignup() when loading != null:
return loading();case SuccessSignup() when success != null:
return success(_that.data);case FailureSignup() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignupState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.initial()';
}


}




/// @nodoc


class LoadingSignup<T> implements SignupState<T> {
  const LoadingSignup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSignup<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.loading()';
}


}




/// @nodoc


class SuccessSignup<T> implements SignupState<T> {
  const SuccessSignup(this.data);
  

 final  T data;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessSignupCopyWith<T, SuccessSignup<T>> get copyWith => _$SuccessSignupCopyWithImpl<T, SuccessSignup<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSignup<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignupState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessSignupCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $SuccessSignupCopyWith(SuccessSignup<T> value, $Res Function(SuccessSignup<T>) _then) = _$SuccessSignupCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SuccessSignupCopyWithImpl<T,$Res>
    implements $SuccessSignupCopyWith<T, $Res> {
  _$SuccessSignupCopyWithImpl(this._self, this._then);

  final SuccessSignup<T> _self;
  final $Res Function(SuccessSignup<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SuccessSignup<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class FailureSignup<T> implements SignupState<T> {
  const FailureSignup({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureSignupCopyWith<T, FailureSignup<T>> get copyWith => _$FailureSignupCopyWithImpl<T, FailureSignup<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureSignup<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'SignupState<$T>.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FailureSignupCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $FailureSignupCopyWith(FailureSignup<T> value, $Res Function(FailureSignup<T>) _then) = _$FailureSignupCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$FailureSignupCopyWithImpl<T,$Res>
    implements $FailureSignupCopyWith<T, $Res> {
  _$FailureSignupCopyWithImpl(this._self, this._then);

  final FailureSignup<T> _self;
  final $Res Function(FailureSignup<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(FailureSignup<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
