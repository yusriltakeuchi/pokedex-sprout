// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetFavoriteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState()';
}


}

/// @nodoc
class $GetFavoriteStateCopyWith<$Res>  {
$GetFavoriteStateCopyWith(GetFavoriteState _, $Res Function(GetFavoriteState) __);
}


/// Adds pattern-matching-related methods to [GetFavoriteState].
extension GetFavoriteStatePatterns on GetFavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFavoriteInitialState value)?  initial,TResult Function( _GetGetFavoriteLoadingState value)?  loading,TResult Function( _GetGetFavoriteErrorState value)?  error,TResult Function( _GetGetFavoriteLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFavoriteInitialState() when initial != null:
return initial(_that);case _GetGetFavoriteLoadingState() when loading != null:
return loading(_that);case _GetGetFavoriteErrorState() when error != null:
return error(_that);case _GetGetFavoriteLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFavoriteInitialState value)  initial,required TResult Function( _GetGetFavoriteLoadingState value)  loading,required TResult Function( _GetGetFavoriteErrorState value)  error,required TResult Function( _GetGetFavoriteLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetFavoriteInitialState():
return initial(_that);case _GetGetFavoriteLoadingState():
return loading(_that);case _GetGetFavoriteErrorState():
return error(_that);case _GetGetFavoriteLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFavoriteInitialState value)?  initial,TResult? Function( _GetGetFavoriteLoadingState value)?  loading,TResult? Function( _GetGetFavoriteErrorState value)?  error,TResult? Function( _GetGetFavoriteLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetFavoriteInitialState() when initial != null:
return initial(_that);case _GetGetFavoriteLoadingState() when loading != null:
return loading(_that);case _GetGetFavoriteErrorState() when error != null:
return error(_that);case _GetGetFavoriteLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<PokemonEntity> pokemons)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFavoriteInitialState() when initial != null:
return initial();case _GetGetFavoriteLoadingState() when loading != null:
return loading();case _GetGetFavoriteErrorState() when error != null:
return error(_that.message);case _GetGetFavoriteLoadedState() when loaded != null:
return loaded(_that.pokemons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<PokemonEntity> pokemons)  loaded,}) {final _that = this;
switch (_that) {
case _GetFavoriteInitialState():
return initial();case _GetGetFavoriteLoadingState():
return loading();case _GetGetFavoriteErrorState():
return error(_that.message);case _GetGetFavoriteLoadedState():
return loaded(_that.pokemons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<PokemonEntity> pokemons)?  loaded,}) {final _that = this;
switch (_that) {
case _GetFavoriteInitialState() when initial != null:
return initial();case _GetGetFavoriteLoadingState() when loading != null:
return loading();case _GetGetFavoriteErrorState() when error != null:
return error(_that.message);case _GetGetFavoriteLoadedState() when loaded != null:
return loaded(_that.pokemons);case _:
  return null;

}
}

}

/// @nodoc


class _GetFavoriteInitialState implements GetFavoriteState {
  const _GetFavoriteInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFavoriteInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState.initial()';
}


}




/// @nodoc


class _GetGetFavoriteLoadingState implements GetFavoriteState {
  const _GetGetFavoriteLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetFavoriteLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState.loading()';
}


}




/// @nodoc


class _GetGetFavoriteErrorState implements GetFavoriteState {
  const _GetGetFavoriteErrorState(this.message);
  

 final  String message;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetFavoriteErrorStateCopyWith<_GetGetFavoriteErrorState> get copyWith => __$GetGetFavoriteErrorStateCopyWithImpl<_GetGetFavoriteErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetFavoriteErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetFavoriteState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetFavoriteErrorStateCopyWith<$Res> implements $GetFavoriteStateCopyWith<$Res> {
  factory _$GetGetFavoriteErrorStateCopyWith(_GetGetFavoriteErrorState value, $Res Function(_GetGetFavoriteErrorState) _then) = __$GetGetFavoriteErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetFavoriteErrorStateCopyWithImpl<$Res>
    implements _$GetGetFavoriteErrorStateCopyWith<$Res> {
  __$GetGetFavoriteErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetFavoriteErrorState _self;
  final $Res Function(_GetGetFavoriteErrorState) _then;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetFavoriteErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetFavoriteLoadedState implements GetFavoriteState {
  const _GetGetFavoriteLoadedState({required final  List<PokemonEntity> pokemons}): _pokemons = pokemons;
  

 final  List<PokemonEntity> _pokemons;
 List<PokemonEntity> get pokemons {
  if (_pokemons is EqualUnmodifiableListView) return _pokemons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemons);
}


/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetFavoriteLoadedStateCopyWith<_GetGetFavoriteLoadedState> get copyWith => __$GetGetFavoriteLoadedStateCopyWithImpl<_GetGetFavoriteLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetFavoriteLoadedState&&const DeepCollectionEquality().equals(other._pokemons, _pokemons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pokemons));

@override
String toString() {
  return 'GetFavoriteState.loaded(pokemons: $pokemons)';
}


}

/// @nodoc
abstract mixin class _$GetGetFavoriteLoadedStateCopyWith<$Res> implements $GetFavoriteStateCopyWith<$Res> {
  factory _$GetGetFavoriteLoadedStateCopyWith(_GetGetFavoriteLoadedState value, $Res Function(_GetGetFavoriteLoadedState) _then) = __$GetGetFavoriteLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<PokemonEntity> pokemons
});




}
/// @nodoc
class __$GetGetFavoriteLoadedStateCopyWithImpl<$Res>
    implements _$GetGetFavoriteLoadedStateCopyWith<$Res> {
  __$GetGetFavoriteLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetFavoriteLoadedState _self;
  final $Res Function(_GetGetFavoriteLoadedState) _then;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemons = null,}) {
  return _then(_GetGetFavoriteLoadedState(
pokemons: null == pokemons ? _self._pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonEntity>,
  ));
}


}

// dart format on
