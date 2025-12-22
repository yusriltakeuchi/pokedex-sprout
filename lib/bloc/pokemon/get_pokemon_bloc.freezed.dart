// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPokemonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPokemonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState()';
}


}

/// @nodoc
class $GetPokemonStateCopyWith<$Res>  {
$GetPokemonStateCopyWith(GetPokemonState _, $Res Function(GetPokemonState) __);
}


/// Adds pattern-matching-related methods to [GetPokemonState].
extension GetPokemonStatePatterns on GetPokemonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPokemonInitialState value)?  initial,TResult Function( _GetGetPokemonLoadingState value)?  loading,TResult Function( _GetGetPokemonErrorState value)?  error,TResult Function( _GetGetPokemonLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPokemonInitialState() when initial != null:
return initial(_that);case _GetGetPokemonLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonErrorState() when error != null:
return error(_that);case _GetGetPokemonLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPokemonInitialState value)  initial,required TResult Function( _GetGetPokemonLoadingState value)  loading,required TResult Function( _GetGetPokemonErrorState value)  error,required TResult Function( _GetGetPokemonLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonInitialState():
return initial(_that);case _GetGetPokemonLoadingState():
return loading(_that);case _GetGetPokemonErrorState():
return error(_that);case _GetGetPokemonLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPokemonInitialState value)?  initial,TResult? Function( _GetGetPokemonLoadingState value)?  loading,TResult? Function( _GetGetPokemonErrorState value)?  error,TResult? Function( _GetGetPokemonLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonInitialState() when initial != null:
return initial(_that);case _GetGetPokemonLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonErrorState() when error != null:
return error(_that);case _GetGetPokemonLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<PokemonEntity> pokemons,  int offset,  int limit,  bool hasReachedMax,  bool onLoadMore)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPokemonInitialState() when initial != null:
return initial();case _GetGetPokemonLoadingState() when loading != null:
return loading();case _GetGetPokemonErrorState() when error != null:
return error(_that.message);case _GetGetPokemonLoadedState() when loaded != null:
return loaded(_that.pokemons,_that.offset,_that.limit,_that.hasReachedMax,_that.onLoadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<PokemonEntity> pokemons,  int offset,  int limit,  bool hasReachedMax,  bool onLoadMore)  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonInitialState():
return initial();case _GetGetPokemonLoadingState():
return loading();case _GetGetPokemonErrorState():
return error(_that.message);case _GetGetPokemonLoadedState():
return loaded(_that.pokemons,_that.offset,_that.limit,_that.hasReachedMax,_that.onLoadMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<PokemonEntity> pokemons,  int offset,  int limit,  bool hasReachedMax,  bool onLoadMore)?  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonInitialState() when initial != null:
return initial();case _GetGetPokemonLoadingState() when loading != null:
return loading();case _GetGetPokemonErrorState() when error != null:
return error(_that.message);case _GetGetPokemonLoadedState() when loaded != null:
return loaded(_that.pokemons,_that.offset,_that.limit,_that.hasReachedMax,_that.onLoadMore);case _:
  return null;

}
}

}

/// @nodoc


class _GetPokemonInitialState implements GetPokemonState {
  const _GetPokemonInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState.initial()';
}


}




/// @nodoc


class _GetGetPokemonLoadingState implements GetPokemonState {
  const _GetGetPokemonLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState.loading()';
}


}




/// @nodoc


class _GetGetPokemonErrorState implements GetPokemonState {
  const _GetGetPokemonErrorState(this.message);
  

 final  String message;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonErrorStateCopyWith<_GetGetPokemonErrorState> get copyWith => __$GetGetPokemonErrorStateCopyWithImpl<_GetGetPokemonErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetPokemonState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonErrorStateCopyWith<$Res> implements $GetPokemonStateCopyWith<$Res> {
  factory _$GetGetPokemonErrorStateCopyWith(_GetGetPokemonErrorState value, $Res Function(_GetGetPokemonErrorState) _then) = __$GetGetPokemonErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetPokemonErrorStateCopyWithImpl<$Res>
    implements _$GetGetPokemonErrorStateCopyWith<$Res> {
  __$GetGetPokemonErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonErrorState _self;
  final $Res Function(_GetGetPokemonErrorState) _then;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetPokemonErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetPokemonLoadedState implements GetPokemonState {
  const _GetGetPokemonLoadedState({required final  List<PokemonEntity> pokemons, required this.offset, required this.limit, required this.hasReachedMax, required this.onLoadMore}): _pokemons = pokemons;
  

 final  List<PokemonEntity> _pokemons;
 List<PokemonEntity> get pokemons {
  if (_pokemons is EqualUnmodifiableListView) return _pokemons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemons);
}

 final  int offset;
 final  int limit;
 final  bool hasReachedMax;
 final  bool onLoadMore;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonLoadedStateCopyWith<_GetGetPokemonLoadedState> get copyWith => __$GetGetPokemonLoadedStateCopyWithImpl<_GetGetPokemonLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonLoadedState&&const DeepCollectionEquality().equals(other._pokemons, _pokemons)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.onLoadMore, onLoadMore) || other.onLoadMore == onLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pokemons),offset,limit,hasReachedMax,onLoadMore);

@override
String toString() {
  return 'GetPokemonState.loaded(pokemons: $pokemons, offset: $offset, limit: $limit, hasReachedMax: $hasReachedMax, onLoadMore: $onLoadMore)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonLoadedStateCopyWith<$Res> implements $GetPokemonStateCopyWith<$Res> {
  factory _$GetGetPokemonLoadedStateCopyWith(_GetGetPokemonLoadedState value, $Res Function(_GetGetPokemonLoadedState) _then) = __$GetGetPokemonLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<PokemonEntity> pokemons, int offset, int limit, bool hasReachedMax, bool onLoadMore
});




}
/// @nodoc
class __$GetGetPokemonLoadedStateCopyWithImpl<$Res>
    implements _$GetGetPokemonLoadedStateCopyWith<$Res> {
  __$GetGetPokemonLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonLoadedState _self;
  final $Res Function(_GetGetPokemonLoadedState) _then;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemons = null,Object? offset = null,Object? limit = null,Object? hasReachedMax = null,Object? onLoadMore = null,}) {
  return _then(_GetGetPokemonLoadedState(
pokemons: null == pokemons ? _self._pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonEntity>,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,onLoadMore: null == onLoadMore ? _self.onLoadMore : onLoadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
