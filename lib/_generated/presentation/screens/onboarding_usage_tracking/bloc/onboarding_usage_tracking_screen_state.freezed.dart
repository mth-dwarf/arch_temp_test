// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingUsageTrackingScreenState {

 bool get isLoading; AppError get error;
/// Create a copy of OnboardingUsageTrackingScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingUsageTrackingScreenStateCopyWith<OnboardingUsageTrackingScreenState> get copyWith => _$OnboardingUsageTrackingScreenStateCopyWithImpl<OnboardingUsageTrackingScreenState>(this as OnboardingUsageTrackingScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingUsageTrackingScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error);

@override
String toString() {
  return 'OnboardingUsageTrackingScreenState(isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $OnboardingUsageTrackingScreenStateCopyWith<$Res>  {
  factory $OnboardingUsageTrackingScreenStateCopyWith(OnboardingUsageTrackingScreenState value, $Res Function(OnboardingUsageTrackingScreenState) _then) = _$OnboardingUsageTrackingScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, AppError error
});




}
/// @nodoc
class _$OnboardingUsageTrackingScreenStateCopyWithImpl<$Res>
    implements $OnboardingUsageTrackingScreenStateCopyWith<$Res> {
  _$OnboardingUsageTrackingScreenStateCopyWithImpl(this._self, this._then);

  final OnboardingUsageTrackingScreenState _self;
  final $Res Function(OnboardingUsageTrackingScreenState) _then;

/// Create a copy of OnboardingUsageTrackingScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingUsageTrackingScreenState].
extension OnboardingUsageTrackingScreenStatePatterns on OnboardingUsageTrackingScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingUsageTrackingScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingUsageTrackingScreenState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingUsageTrackingScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  AppError error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState() when $default != null:
return $default(_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  AppError error)  $default,) {final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState():
return $default(_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  AppError error)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingUsageTrackingScreenState() when $default != null:
return $default(_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingUsageTrackingScreenState extends OnboardingUsageTrackingScreenState {
  const _OnboardingUsageTrackingScreenState({this.isLoading = false, this.error = AppError.none}): super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  AppError error;

/// Create a copy of OnboardingUsageTrackingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingUsageTrackingScreenStateCopyWith<_OnboardingUsageTrackingScreenState> get copyWith => __$OnboardingUsageTrackingScreenStateCopyWithImpl<_OnboardingUsageTrackingScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingUsageTrackingScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error);

@override
String toString() {
  return 'OnboardingUsageTrackingScreenState(isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$OnboardingUsageTrackingScreenStateCopyWith<$Res> implements $OnboardingUsageTrackingScreenStateCopyWith<$Res> {
  factory _$OnboardingUsageTrackingScreenStateCopyWith(_OnboardingUsageTrackingScreenState value, $Res Function(_OnboardingUsageTrackingScreenState) _then) = __$OnboardingUsageTrackingScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, AppError error
});




}
/// @nodoc
class __$OnboardingUsageTrackingScreenStateCopyWithImpl<$Res>
    implements _$OnboardingUsageTrackingScreenStateCopyWith<$Res> {
  __$OnboardingUsageTrackingScreenStateCopyWithImpl(this._self, this._then);

  final _OnboardingUsageTrackingScreenState _self;
  final $Res Function(_OnboardingUsageTrackingScreenState) _then;

/// Create a copy of OnboardingUsageTrackingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = null,}) {
  return _then(_OnboardingUsageTrackingScreenState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}


}

// dart format on
