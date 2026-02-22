// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../presentation/screens/splash/bloc/splash_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashScreenState {

 bool get isLoading; AppError get error;
/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenStateCopyWith<SplashScreenState> get copyWith => _$SplashScreenStateCopyWithImpl<SplashScreenState>(this as SplashScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error);

@override
String toString() {
  return 'SplashScreenState(isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $SplashScreenStateCopyWith<$Res>  {
  factory $SplashScreenStateCopyWith(SplashScreenState value, $Res Function(SplashScreenState) _then) = _$SplashScreenStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, AppError error
});




}
/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._self, this._then);

  final SplashScreenState _self;
  final $Res Function(SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashScreenState].
extension SplashScreenStatePatterns on SplashScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashScreenState value)  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _SplashScreenState() when $default != null:
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
case _SplashScreenState() when $default != null:
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
case _SplashScreenState():
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
case _SplashScreenState() when $default != null:
return $default(_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SplashScreenState extends SplashScreenState {
  const _SplashScreenState({this.isLoading = false, this.error = AppError.none}): super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  AppError error;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashScreenStateCopyWith<_SplashScreenState> get copyWith => __$SplashScreenStateCopyWithImpl<_SplashScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashScreenState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error);

@override
String toString() {
  return 'SplashScreenState(isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SplashScreenStateCopyWith<$Res> implements $SplashScreenStateCopyWith<$Res> {
  factory _$SplashScreenStateCopyWith(_SplashScreenState value, $Res Function(_SplashScreenState) _then) = __$SplashScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, AppError error
});




}
/// @nodoc
class __$SplashScreenStateCopyWithImpl<$Res>
    implements _$SplashScreenStateCopyWith<$Res> {
  __$SplashScreenStateCopyWithImpl(this._self, this._then);

  final _SplashScreenState _self;
  final $Res Function(_SplashScreenState) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = null,}) {
  return _then(_SplashScreenState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}


}

// dart format on
