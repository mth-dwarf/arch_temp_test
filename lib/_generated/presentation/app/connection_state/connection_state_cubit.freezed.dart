// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../presentation/app/connection_state/connection_state_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConnectionState {

 bool get isLoading; bool get isInternetConnected;
/// Create a copy of AppConnectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConnectionStateCopyWith<AppConnectionState> get copyWith => _$AppConnectionStateCopyWithImpl<AppConnectionState>(this as AppConnectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConnectionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInternetConnected, isInternetConnected) || other.isInternetConnected == isInternetConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isInternetConnected);

@override
String toString() {
  return 'AppConnectionState(isLoading: $isLoading, isInternetConnected: $isInternetConnected)';
}


}

/// @nodoc
abstract mixin class $AppConnectionStateCopyWith<$Res>  {
  factory $AppConnectionStateCopyWith(AppConnectionState value, $Res Function(AppConnectionState) _then) = _$AppConnectionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isInternetConnected
});




}
/// @nodoc
class _$AppConnectionStateCopyWithImpl<$Res>
    implements $AppConnectionStateCopyWith<$Res> {
  _$AppConnectionStateCopyWithImpl(this._self, this._then);

  final AppConnectionState _self;
  final $Res Function(AppConnectionState) _then;

/// Create a copy of AppConnectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isInternetConnected = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInternetConnected: null == isInternetConnected ? _self.isInternetConnected : isInternetConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConnectionState].
extension AppConnectionStatePatterns on AppConnectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConnectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConnectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConnectionState value)  $default,){
final _that = this;
switch (_that) {
case _AppConnectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConnectionState value)?  $default,){
final _that = this;
switch (_that) {
case _AppConnectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isInternetConnected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConnectionState() when $default != null:
return $default(_that.isLoading,_that.isInternetConnected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isInternetConnected)  $default,) {final _that = this;
switch (_that) {
case _AppConnectionState():
return $default(_that.isLoading,_that.isInternetConnected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isInternetConnected)?  $default,) {final _that = this;
switch (_that) {
case _AppConnectionState() when $default != null:
return $default(_that.isLoading,_that.isInternetConnected);case _:
  return null;

}
}

}

/// @nodoc


class _AppConnectionState implements AppConnectionState {
  const _AppConnectionState({this.isLoading = false, this.isInternetConnected = true});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInternetConnected;

/// Create a copy of AppConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConnectionStateCopyWith<_AppConnectionState> get copyWith => __$AppConnectionStateCopyWithImpl<_AppConnectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConnectionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInternetConnected, isInternetConnected) || other.isInternetConnected == isInternetConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isInternetConnected);

@override
String toString() {
  return 'AppConnectionState(isLoading: $isLoading, isInternetConnected: $isInternetConnected)';
}


}

/// @nodoc
abstract mixin class _$AppConnectionStateCopyWith<$Res> implements $AppConnectionStateCopyWith<$Res> {
  factory _$AppConnectionStateCopyWith(_AppConnectionState value, $Res Function(_AppConnectionState) _then) = __$AppConnectionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isInternetConnected
});




}
/// @nodoc
class __$AppConnectionStateCopyWithImpl<$Res>
    implements _$AppConnectionStateCopyWith<$Res> {
  __$AppConnectionStateCopyWithImpl(this._self, this._then);

  final _AppConnectionState _self;
  final $Res Function(_AppConnectionState) _then;

/// Create a copy of AppConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isInternetConnected = null,}) {
  return _then(_AppConnectionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInternetConnected: null == isInternetConnected ? _self.isInternetConnected : isInternetConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
