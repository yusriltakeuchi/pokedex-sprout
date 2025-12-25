// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemon_machine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPokemonMachineState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPokemonMachineState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMachineState()';
}


}

/// @nodoc
class $GetPokemonMachineStateCopyWith<$Res>  {
$GetPokemonMachineStateCopyWith(GetPokemonMachineState _, $Res Function(GetPokemonMachineState) __);
}


/// Adds pattern-matching-related methods to [GetPokemonMachineState].
extension GetPokemonMachineStatePatterns on GetPokemonMachineState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPokemonMachineInitialState value)?  initial,TResult Function( _GetGetPokemonMachineLoadingState value)?  loading,TResult Function( _GetGetPokemonMachineErrorState value)?  error,TResult Function( _GetGetPokemonMachineLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState() when initial != null:
return initial(_that);case _GetGetPokemonMachineLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonMachineErrorState() when error != null:
return error(_that);case _GetGetPokemonMachineLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPokemonMachineInitialState value)  initial,required TResult Function( _GetGetPokemonMachineLoadingState value)  loading,required TResult Function( _GetGetPokemonMachineErrorState value)  error,required TResult Function( _GetGetPokemonMachineLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState():
return initial(_that);case _GetGetPokemonMachineLoadingState():
return loading(_that);case _GetGetPokemonMachineErrorState():
return error(_that);case _GetGetPokemonMachineLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPokemonMachineInitialState value)?  initial,TResult? Function( _GetGetPokemonMachineLoadingState value)?  loading,TResult? Function( _GetGetPokemonMachineErrorState value)?  error,TResult? Function( _GetGetPokemonMachineLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState() when initial != null:
return initial(_that);case _GetGetPokemonMachineLoadingState() when loading != null:
return loading(_that);case _GetGetPokemonMachineErrorState() when error != null:
return error(_that);case _GetGetPokemonMachineLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<MachineEntity> machines)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState() when initial != null:
return initial();case _GetGetPokemonMachineLoadingState() when loading != null:
return loading();case _GetGetPokemonMachineErrorState() when error != null:
return error(_that.message);case _GetGetPokemonMachineLoadedState() when loaded != null:
return loaded(_that.machines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<MachineEntity> machines)  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState():
return initial();case _GetGetPokemonMachineLoadingState():
return loading();case _GetGetPokemonMachineErrorState():
return error(_that.message);case _GetGetPokemonMachineLoadedState():
return loaded(_that.machines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<MachineEntity> machines)?  loaded,}) {final _that = this;
switch (_that) {
case _GetPokemonMachineInitialState() when initial != null:
return initial();case _GetGetPokemonMachineLoadingState() when loading != null:
return loading();case _GetGetPokemonMachineErrorState() when error != null:
return error(_that.message);case _GetGetPokemonMachineLoadedState() when loaded != null:
return loaded(_that.machines);case _:
  return null;

}
}

}

/// @nodoc


class _GetPokemonMachineInitialState implements GetPokemonMachineState {
  const _GetPokemonMachineInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonMachineInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMachineState.initial()';
}


}




/// @nodoc


class _GetGetPokemonMachineLoadingState implements GetPokemonMachineState {
  const _GetGetPokemonMachineLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMachineLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonMachineState.loading()';
}


}




/// @nodoc


class _GetGetPokemonMachineErrorState implements GetPokemonMachineState {
  const _GetGetPokemonMachineErrorState(this.message);
  

 final  String message;

/// Create a copy of GetPokemonMachineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonMachineErrorStateCopyWith<_GetGetPokemonMachineErrorState> get copyWith => __$GetGetPokemonMachineErrorStateCopyWithImpl<_GetGetPokemonMachineErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMachineErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetPokemonMachineState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonMachineErrorStateCopyWith<$Res> implements $GetPokemonMachineStateCopyWith<$Res> {
  factory _$GetGetPokemonMachineErrorStateCopyWith(_GetGetPokemonMachineErrorState value, $Res Function(_GetGetPokemonMachineErrorState) _then) = __$GetGetPokemonMachineErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetPokemonMachineErrorStateCopyWithImpl<$Res>
    implements _$GetGetPokemonMachineErrorStateCopyWith<$Res> {
  __$GetGetPokemonMachineErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonMachineErrorState _self;
  final $Res Function(_GetGetPokemonMachineErrorState) _then;

/// Create a copy of GetPokemonMachineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetPokemonMachineErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetPokemonMachineLoadedState implements GetPokemonMachineState {
  const _GetGetPokemonMachineLoadedState({required final  List<MachineEntity> machines}): _machines = machines;
  

 final  List<MachineEntity> _machines;
 List<MachineEntity> get machines {
  if (_machines is EqualUnmodifiableListView) return _machines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_machines);
}


/// Create a copy of GetPokemonMachineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetPokemonMachineLoadedStateCopyWith<_GetGetPokemonMachineLoadedState> get copyWith => __$GetGetPokemonMachineLoadedStateCopyWithImpl<_GetGetPokemonMachineLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetPokemonMachineLoadedState&&const DeepCollectionEquality().equals(other._machines, _machines));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_machines));

@override
String toString() {
  return 'GetPokemonMachineState.loaded(machines: $machines)';
}


}

/// @nodoc
abstract mixin class _$GetGetPokemonMachineLoadedStateCopyWith<$Res> implements $GetPokemonMachineStateCopyWith<$Res> {
  factory _$GetGetPokemonMachineLoadedStateCopyWith(_GetGetPokemonMachineLoadedState value, $Res Function(_GetGetPokemonMachineLoadedState) _then) = __$GetGetPokemonMachineLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<MachineEntity> machines
});




}
/// @nodoc
class __$GetGetPokemonMachineLoadedStateCopyWithImpl<$Res>
    implements _$GetGetPokemonMachineLoadedStateCopyWith<$Res> {
  __$GetGetPokemonMachineLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetPokemonMachineLoadedState _self;
  final $Res Function(_GetGetPokemonMachineLoadedState) _then;

/// Create a copy of GetPokemonMachineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? machines = null,}) {
  return _then(_GetGetPokemonMachineLoadedState(
machines: null == machines ? _self._machines : machines // ignore: cast_nullable_to_non_nullable
as List<MachineEntity>,
  ));
}


}

// dart format on
