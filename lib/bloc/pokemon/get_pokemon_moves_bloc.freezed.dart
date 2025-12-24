// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemon_moves_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPokemonMovesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPokemonMovesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMovesState()';
}


}

/// @nodoc
class $GetPokemonMovesStateCopyWith<$Res>  {
$GetPokemonMovesStateCopyWith(GetPokemonMovesState _, $Res Function(GetPokemonMovesState) __);
}


/// Adds pattern-matching-related methods to [GetPokemonMovesState].
extension GetPokemonMovesStatePatterns on GetPokemonMovesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPokemonMovesInitialState value)?  initial,TResult Function( _GetGetPokemonMovesLoadingState value)?  loading,TResult Function( _GetGetPokemonMovesErrorState value)?  error,TResult Function( _GetGetPokemonMovesLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState() when initial != null:
return initial(_that);case _GetGetPokemonMovesLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonMovesErrorState() when error != null:
return error(_that);case _GetGetPokemonMovesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPokemonMovesInitialState value)  initial,required TResult Function( _GetGetPokemonMovesLoadingState value)  loading,required TResult Function( _GetGetPokemonMovesErrorState value)  error,required TResult Function( _GetGetPokemonMovesLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState():
return initial(_that);case _GetGetPokemonMovesLoadingState():
return loading(_that);case _GetGetPokemonMovesErrorState():
return error(_that);case _GetGetPokemonMovesLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPokemonMovesInitialState value)?  initial,TResult? Function( _GetGetPokemonMovesLoadingState value)?  loading,TResult? Function( _GetGetPokemonMovesErrorState value)?  error,TResult? Function( _GetGetPokemonMovesLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState() when initial != null:
return initial(_that);case _GetGetPokemonMovesLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonMovesErrorState() when error != null:
return error(_that);case _GetGetPokemonMovesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<MoveDetailEntity> moves)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState() when initial != null:
return initial();case _GetGetPokemonMovesLoadingState() when loading != null:
return loading();case _GetGetPokemonMovesErrorState() when error != null:
return error(_that.message);case _GetGetPokemonMovesLoadedState() when loaded != null:
return loaded(_that.moves);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<MoveDetailEntity> moves)  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState():
return initial();case _GetGetPokemonMovesLoadingState():
return loading();case _GetGetPokemonMovesErrorState():
return error(_that.message);case _GetGetPokemonMovesLoadedState():
return loaded(_that.moves);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<MoveDetailEntity> moves)?  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonMovesInitialState() when initial != null:
return initial();case _GetGetPokemonMovesLoadingState() when loading != null:
return loading();case _GetGetPokemonMovesErrorState() when error != null:
return error(_that.message);case _GetGetPokemonMovesLoadedState() when loaded != null:
return loaded(_that.moves);case _:
  return null;

}
}

}

/// @nodoc


class _GetPokemonMovesInitialState implements GetPokemonMovesState {
  const _GetPokemonMovesInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonMovesInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMovesState.initial()';
}


}




/// @nodoc


class _GetGetPokemonMovesLoadingState implements GetPokemonMovesState {
  const _GetGetPokemonMovesLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMovesLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMovesState.loading()';
}


}




/// @nodoc


class _GetGetPokemonMovesErrorState implements GetPokemonMovesState {
  const _GetGetPokemonMovesErrorState(this.message);
  

 final  String message;

/// Create a copy of GetPokemonMovesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonMovesErrorStateCopyWith<_GetGetPokemonMovesErrorState> get copyWith => __$GetGetPokemonMovesErrorStateCopyWithImpl<_GetGetPokemonMovesErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMovesErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetPokemonMovesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonMovesErrorStateCopyWith<$Res> implements $GetPokemonMovesStateCopyWith<$Res> {
  factory _$GetGetPokemonMovesErrorStateCopyWith(_GetGetPokemonMovesErrorState value, $Res Function(_GetGetPokemonMovesErrorState) _then) = __$GetGetPokemonMovesErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetPokemonMovesErrorStateCopyWithImpl<$Res>
    implements _$GetGetPokemonMovesErrorStateCopyWith<$Res> {
  __$GetGetPokemonMovesErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonMovesErrorState _self;
  final $Res Function(_GetGetPokemonMovesErrorState) _then;

/// Create a copy of GetPokemonMovesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetPokemonMovesErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetPokemonMovesLoadedState implements GetPokemonMovesState {
  const _GetGetPokemonMovesLoadedState({required final  List<MoveDetailEntity> moves}): _moves = moves;
  

 final  List<MoveDetailEntity> _moves;
 List<MoveDetailEntity> get moves {
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moves);
}


/// Create a copy of GetPokemonMovesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonMovesLoadedStateCopyWith<_GetGetPokemonMovesLoadedState> get copyWith => __$GetGetPokemonMovesLoadedStateCopyWithImpl<_GetGetPokemonMovesLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMovesLoadedState&&const DeepCollectionEquality().equals(other._moves, _moves));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_moves));

@override
String toString() {
  return 'GetPokemonMovesState.loaded(moves: $moves)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonMovesLoadedStateCopyWith<$Res> implements $GetPokemonMovesStateCopyWith<$Res> {
  factory _$GetGetPokemonMovesLoadedStateCopyWith(_GetGetPokemonMovesLoadedState value, $Res Function(_GetGetPokemonMovesLoadedState) _then) = __$GetGetPokemonMovesLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<MoveDetailEntity> moves
});




}
/// @nodoc
class __$GetGetPokemonMovesLoadedStateCopyWithImpl<$Res>
    implements _$GetGetPokemonMovesLoadedStateCopyWith<$Res> {
  __$GetGetPokemonMovesLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonMovesLoadedState _self;
  final $Res Function(_GetGetPokemonMovesLoadedState) _then;

/// Create a copy of GetPokemonMovesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? moves = null,}) {
  return _then(_GetGetPokemonMovesLoadedState(
moves: null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<MoveDetailEntity>,
  ));
}


}

// dart format on
