// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainFailure {

 String get errMsg;
/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainFailureCopyWith<MainFailure> get copyWith => _$MainFailureCopyWithImpl<MainFailure>(this as MainFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainFailure&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'MainFailure(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class $MainFailureCopyWith<$Res>  {
  factory $MainFailureCopyWith(MainFailure value, $Res Function(MainFailure) _then) = _$MainFailureCopyWithImpl;
@useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class _$MainFailureCopyWithImpl<$Res>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._self, this._then);

  final MainFailure _self;
  final $Res Function(MainFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errMsg = null,}) {
  return _then(_self.copyWith(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MainFailure].
extension MainFailurePatterns on MainFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FirebaseFailure value)?  firebaseFailure,TResult Function( _ServerFailure value)?  serverFailure,TResult Function( _GeneralFailure value)?  generalFailure,TResult Function( _NotFoundFailure value)?  notFoundFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirebaseFailure() when firebaseFailure != null:
return firebaseFailure(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _GeneralFailure() when generalFailure != null:
return generalFailure(_that);case _NotFoundFailure() when notFoundFailure != null:
return notFoundFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FirebaseFailure value)  firebaseFailure,required TResult Function( _ServerFailure value)  serverFailure,required TResult Function( _GeneralFailure value)  generalFailure,required TResult Function( _NotFoundFailure value)  notFoundFailure,}){
final _that = this;
switch (_that) {
case _FirebaseFailure():
return firebaseFailure(_that);case _ServerFailure():
return serverFailure(_that);case _GeneralFailure():
return generalFailure(_that);case _NotFoundFailure():
return notFoundFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FirebaseFailure value)?  firebaseFailure,TResult? Function( _ServerFailure value)?  serverFailure,TResult? Function( _GeneralFailure value)?  generalFailure,TResult? Function( _NotFoundFailure value)?  notFoundFailure,}){
final _that = this;
switch (_that) {
case _FirebaseFailure() when firebaseFailure != null:
return firebaseFailure(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _GeneralFailure() when generalFailure != null:
return generalFailure(_that);case _NotFoundFailure() when notFoundFailure != null:
return notFoundFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String errMsg)?  firebaseFailure,TResult Function( String errMsg)?  serverFailure,TResult Function( String errMsg)?  generalFailure,TResult Function( String errMsg)?  notFoundFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirebaseFailure() when firebaseFailure != null:
return firebaseFailure(_that.errMsg);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.errMsg);case _GeneralFailure() when generalFailure != null:
return generalFailure(_that.errMsg);case _NotFoundFailure() when notFoundFailure != null:
return notFoundFailure(_that.errMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String errMsg)  firebaseFailure,required TResult Function( String errMsg)  serverFailure,required TResult Function( String errMsg)  generalFailure,required TResult Function( String errMsg)  notFoundFailure,}) {final _that = this;
switch (_that) {
case _FirebaseFailure():
return firebaseFailure(_that.errMsg);case _ServerFailure():
return serverFailure(_that.errMsg);case _GeneralFailure():
return generalFailure(_that.errMsg);case _NotFoundFailure():
return notFoundFailure(_that.errMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String errMsg)?  firebaseFailure,TResult? Function( String errMsg)?  serverFailure,TResult? Function( String errMsg)?  generalFailure,TResult? Function( String errMsg)?  notFoundFailure,}) {final _that = this;
switch (_that) {
case _FirebaseFailure() when firebaseFailure != null:
return firebaseFailure(_that.errMsg);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.errMsg);case _GeneralFailure() when generalFailure != null:
return generalFailure(_that.errMsg);case _NotFoundFailure() when notFoundFailure != null:
return notFoundFailure(_that.errMsg);case _:
  return null;

}
}

}

/// @nodoc


class _FirebaseFailure extends MainFailure {
  const _FirebaseFailure({required this.errMsg}): super._();
  

@override final  String errMsg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirebaseFailureCopyWith<_FirebaseFailure> get copyWith => __$FirebaseFailureCopyWithImpl<_FirebaseFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirebaseFailure&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'MainFailure.firebaseFailure(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class _$FirebaseFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$FirebaseFailureCopyWith(_FirebaseFailure value, $Res Function(_FirebaseFailure) _then) = __$FirebaseFailureCopyWithImpl;
@override @useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class __$FirebaseFailureCopyWithImpl<$Res>
    implements _$FirebaseFailureCopyWith<$Res> {
  __$FirebaseFailureCopyWithImpl(this._self, this._then);

  final _FirebaseFailure _self;
  final $Res Function(_FirebaseFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errMsg = null,}) {
  return _then(_FirebaseFailure(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure extends MainFailure {
  const _ServerFailure({required this.errMsg}): super._();
  

@override final  String errMsg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'MainFailure.serverFailure(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errMsg = null,}) {
  return _then(_ServerFailure(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GeneralFailure extends MainFailure {
  const _GeneralFailure({required this.errMsg}): super._();
  

@override final  String errMsg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralFailureCopyWith<_GeneralFailure> get copyWith => __$GeneralFailureCopyWithImpl<_GeneralFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralFailure&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'MainFailure.generalFailure(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class _$GeneralFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$GeneralFailureCopyWith(_GeneralFailure value, $Res Function(_GeneralFailure) _then) = __$GeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class __$GeneralFailureCopyWithImpl<$Res>
    implements _$GeneralFailureCopyWith<$Res> {
  __$GeneralFailureCopyWithImpl(this._self, this._then);

  final _GeneralFailure _self;
  final $Res Function(_GeneralFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errMsg = null,}) {
  return _then(_GeneralFailure(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NotFoundFailure extends MainFailure {
  const _NotFoundFailure({required this.errMsg}): super._();
  

@override final  String errMsg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotFoundFailureCopyWith<_NotFoundFailure> get copyWith => __$NotFoundFailureCopyWithImpl<_NotFoundFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFoundFailure&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'MainFailure.notFoundFailure(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class _$NotFoundFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$NotFoundFailureCopyWith(_NotFoundFailure value, $Res Function(_NotFoundFailure) _then) = __$NotFoundFailureCopyWithImpl;
@override @useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class __$NotFoundFailureCopyWithImpl<$Res>
    implements _$NotFoundFailureCopyWith<$Res> {
  __$NotFoundFailureCopyWithImpl(this._self, this._then);

  final _NotFoundFailure _self;
  final $Res Function(_NotFoundFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errMsg = null,}) {
  return _then(_NotFoundFailure(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
