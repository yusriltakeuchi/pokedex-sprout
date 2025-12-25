// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoveFavoriteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavoriteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveFavoriteState()';
}


}

/// @nodoc
class $RemoveFavoriteStateCopyWith<$Res>  {
$RemoveFavoriteStateCopyWith(RemoveFavoriteState _, $Res Function(RemoveFavoriteState) __);
}


/// Adds pattern-matching-related methods to [RemoveFavoriteState].
extension RemoveFavoriteStatePatterns on RemoveFavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RemoveFavoriteInitialState value)?  initial,TResult Function( _GetRemoveFavoriteLoadingState value)?  loading,TResult Function( _GetRemoveFavoriteErrorState value)?  error,TResult Function( _GetRemoveFavoriteLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState() when initial != null:
return initial(_that);case _GetRemoveFavoriteLoadingState() when loading != null:
return loading(_that);case _GetRemoveFavoriteErrorState() when error != null:
return error(_that);case _GetRemoveFavoriteLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RemoveFavoriteInitialState value)  initial,required TResult Function( _GetRemoveFavoriteLoadingState value)  loading,required TResult Function( _GetRemoveFavoriteErrorState value)  error,required TResult Function( _GetRemoveFavoriteLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState():
return initial(_that);case _GetRemoveFavoriteLoadingState():
return loading(_that);case _GetRemoveFavoriteErrorState():
return error(_that);case _GetRemoveFavoriteLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RemoveFavoriteInitialState value)?  initial,TResult? Function( _GetRemoveFavoriteLoadingState value)?  loading,TResult? Function( _GetRemoveFavoriteErrorState value)?  error,TResult? Function( _GetRemoveFavoriteLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState() when initial != null:
return initial(_that);case _GetRemoveFavoriteLoadingState() when loading != null:
return loading(_that);case _GetRemoveFavoriteErrorState() when error != null:
return error(_that);case _GetRemoveFavoriteLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function()?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState() when initial != null:
return initial();case _GetRemoveFavoriteLoadingState() when loading != null:
return loading();case _GetRemoveFavoriteErrorState() when error != null:
return error(_that.message);case _GetRemoveFavoriteLoadedState() when loaded != null:
return loaded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function()  loaded,}) {final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState():
return initial();case _GetRemoveFavoriteLoadingState():
return loading();case _GetRemoveFavoriteErrorState():
return error(_that.message);case _GetRemoveFavoriteLoadedState():
return loaded();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function()?  loaded,}) {final _that = this;
switch (_that) {
case _RemoveFavoriteInitialState() when initial != null:
return initial();case _GetRemoveFavoriteLoadingState() when loading != null:
return loading();case _GetRemoveFavoriteErrorState() when error != null:
return error(_that.message);case _GetRemoveFavoriteLoadedState() when loaded != null:
return loaded();case _:
  return null;

}
}

}

/// @nodoc


class _RemoveFavoriteInitialState implements RemoveFavoriteState {
  const _RemoveFavoriteInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavoriteInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveFavoriteState.initial()';
}


}




/// @nodoc


class _GetRemoveFavoriteLoadingState implements RemoveFavoriteState {
  const _GetRemoveFavoriteLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRemoveFavoriteLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveFavoriteState.loading()';
}


}




/// @nodoc


class _GetRemoveFavoriteErrorState implements RemoveFavoriteState {
  const _GetRemoveFavoriteErrorState(this.message);
  

 final  String message;

/// Create a copy of RemoveFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRemoveFavoriteErrorStateCopyWith<_GetRemoveFavoriteErrorState> get copyWith => __$GetRemoveFavoriteErrorStateCopyWithImpl<_GetRemoveFavoriteErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRemoveFavoriteErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RemoveFavoriteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetRemoveFavoriteErrorStateCopyWith<$Res> implements $RemoveFavoriteStateCopyWith<$Res> {
  factory _$GetRemoveFavoriteErrorStateCopyWith(_GetRemoveFavoriteErrorState value, $Res Function(_GetRemoveFavoriteErrorState) _then) = __$GetRemoveFavoriteErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetRemoveFavoriteErrorStateCopyWithImpl<$Res>
    implements _$GetRemoveFavoriteErrorStateCopyWith<$Res> {
  __$GetRemoveFavoriteErrorStateCopyWithImpl(this._self, this._then);

  final _GetRemoveFavoriteErrorState _self;
  final $Res Function(_GetRemoveFavoriteErrorState) _then;

/// Create a copy of RemoveFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetRemoveFavoriteErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetRemoveFavoriteLoadedState implements RemoveFavoriteState {
  const _GetRemoveFavoriteLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRemoveFavoriteLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveFavoriteState.loaded()';
}


}




// dart format on
