// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IsFavoriteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsFavoriteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsFavoriteState()';
}


}

/// @nodoc
class $IsFavoriteStateCopyWith<$Res>  {
$IsFavoriteStateCopyWith(IsFavoriteState _, $Res Function(IsFavoriteState) __);
}


/// Adds pattern-matching-related methods to [IsFavoriteState].
extension IsFavoriteStatePatterns on IsFavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _IsFavoriteInitialState value)?  initial,TResult Function( _GetIsFavoriteLoadingState value)?  loading,TResult Function( _GetIsFavoriteErrorState value)?  error,TResult Function( _GetIsFavoriteLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IsFavoriteInitialState() when initial != null:
return initial(_that);case _GetIsFavoriteLoadingState() when loading != null:
return loading(_that);case _GetIsFavoriteErrorState() when error != null:
return error(_that);case _GetIsFavoriteLoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _IsFavoriteInitialState value)  initial,required TResult Function( _GetIsFavoriteLoadingState value)  loading,required TResult Function( _GetIsFavoriteErrorState value)  error,required TResult Function( _GetIsFavoriteLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _IsFavoriteInitialState():
return initial(_that);case _GetIsFavoriteLoadingState():
return loading(_that);case _GetIsFavoriteErrorState():
return error(_that);case _GetIsFavoriteLoadedState():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _IsFavoriteInitialState value)?  initial,TResult? Function( _GetIsFavoriteLoadingState value)?  loading,TResult? Function( _GetIsFavoriteErrorState value)?  error,TResult? Function( _GetIsFavoriteLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _IsFavoriteInitialState() when initial != null:
return initial(_that);case _GetIsFavoriteLoadingState() when loading != null:
return loading(_that);case _GetIsFavoriteErrorState() when error != null:
return error(_that);case _GetIsFavoriteLoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( bool isFavorited)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IsFavoriteInitialState() when initial != null:
return initial();case _GetIsFavoriteLoadingState() when loading != null:
return loading();case _GetIsFavoriteErrorState() when error != null:
return error(_that.message);case _GetIsFavoriteLoadedState() when loaded != null:
return loaded(_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( bool isFavorited)  loaded,}) {final _that = this;
switch (_that) {
case _IsFavoriteInitialState():
return initial();case _GetIsFavoriteLoadingState():
return loading();case _GetIsFavoriteErrorState():
return error(_that.message);case _GetIsFavoriteLoadedState():
return loaded(_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( bool isFavorited)?  loaded,}) {final _that = this;
switch (_that) {
case _IsFavoriteInitialState() when initial != null:
return initial();case _GetIsFavoriteLoadingState() when loading != null:
return loading();case _GetIsFavoriteErrorState() when error != null:
return error(_that.message);case _GetIsFavoriteLoadedState() when loaded != null:
return loaded(_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc


class _IsFavoriteInitialState implements IsFavoriteState {
  const _IsFavoriteInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsFavoriteInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsFavoriteState.initial()';
}


}




/// @nodoc


class _GetIsFavoriteLoadingState implements IsFavoriteState {
  const _GetIsFavoriteLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIsFavoriteLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsFavoriteState.loading()';
}


}




/// @nodoc


class _GetIsFavoriteErrorState implements IsFavoriteState {
  const _GetIsFavoriteErrorState(this.message);
  

 final  String message;

/// Create a copy of IsFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetIsFavoriteErrorStateCopyWith<_GetIsFavoriteErrorState> get copyWith => __$GetIsFavoriteErrorStateCopyWithImpl<_GetIsFavoriteErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIsFavoriteErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'IsFavoriteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetIsFavoriteErrorStateCopyWith<$Res> implements $IsFavoriteStateCopyWith<$Res> {
  factory _$GetIsFavoriteErrorStateCopyWith(_GetIsFavoriteErrorState value, $Res Function(_GetIsFavoriteErrorState) _then) = __$GetIsFavoriteErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetIsFavoriteErrorStateCopyWithImpl<$Res>
    implements _$GetIsFavoriteErrorStateCopyWith<$Res> {
  __$GetIsFavoriteErrorStateCopyWithImpl(this._self, this._then);

  final _GetIsFavoriteErrorState _self;
  final $Res Function(_GetIsFavoriteErrorState) _then;

/// Create a copy of IsFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetIsFavoriteErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetIsFavoriteLoadedState implements IsFavoriteState {
  const _GetIsFavoriteLoadedState({required this.isFavorited});
  

 final  bool isFavorited;

/// Create a copy of IsFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetIsFavoriteLoadedStateCopyWith<_GetIsFavoriteLoadedState> get copyWith => __$GetIsFavoriteLoadedStateCopyWithImpl<_GetIsFavoriteLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIsFavoriteLoadedState&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}


@override
int get hashCode => Object.hash(runtimeType,isFavorited);

@override
String toString() {
  return 'IsFavoriteState.loaded(isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$GetIsFavoriteLoadedStateCopyWith<$Res> implements $IsFavoriteStateCopyWith<$Res> {
  factory _$GetIsFavoriteLoadedStateCopyWith(_GetIsFavoriteLoadedState value, $Res Function(_GetIsFavoriteLoadedState) _then) = __$GetIsFavoriteLoadedStateCopyWithImpl;
@useResult
$Res call({
 bool isFavorited
});




}
/// @nodoc
class __$GetIsFavoriteLoadedStateCopyWithImpl<$Res>
    implements _$GetIsFavoriteLoadedStateCopyWith<$Res> {
  __$GetIsFavoriteLoadedStateCopyWithImpl(this._self, this._then);

  final _GetIsFavoriteLoadedState _self;
  final $Res Function(_GetIsFavoriteLoadedState) _then;

/// Create a copy of IsFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavorited = null,}) {
  return _then(_GetIsFavoriteLoadedState(
isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
