// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EvolutionChainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState()';
}


}

/// @nodoc
class $EvolutionChainStateCopyWith<$Res>  {
$EvolutionChainStateCopyWith(EvolutionChainState _, $Res Function(EvolutionChainState) __);
}


/// Adds pattern-matching-related methods to [EvolutionChainState].
extension EvolutionChainStatePatterns on EvolutionChainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EvolutionChainInitialState value)?  initial,TResult Function( _GetEvolutionChainLoadingState value)?  loading,TResult Function( _GetEvolutionChainErrorState value)?  error,TResult Function( _GetEvolutionChainLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChainInitialState() when initial != null:
return initial(_that);case _GetEvolutionChainLoadingState() when loading != null:
return loading(_that);case _GetEvolutionChainErrorState() when error != null:
return error(_that);case _GetEvolutionChainLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EvolutionChainInitialState value)  initial,required TResult Function( _GetEvolutionChainLoadingState value)  loading,required TResult Function( _GetEvolutionChainErrorState value)  error,required TResult Function( _GetEvolutionChainLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _EvolutionChainInitialState():
return initial(_that);case _GetEvolutionChainLoadingState():
return loading(_that);case _GetEvolutionChainErrorState():
return error(_that);case _GetEvolutionChainLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EvolutionChainInitialState value)?  initial,TResult? Function( _GetEvolutionChainLoadingState value)?  loading,TResult? Function( _GetEvolutionChainErrorState value)?  error,TResult? Function( _GetEvolutionChainLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _EvolutionChainInitialState() when initial != null:
return initial(_that);case _GetEvolutionChainLoadingState() when loading != null:
return loading(_that);case _GetEvolutionChainErrorState() when error != null:
return error(_that);case _GetEvolutionChainLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( EvolutionChainEntity evolutionChain)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainInitialState() when initial != null:
return initial();case _GetEvolutionChainLoadingState() when loading != null:
return loading();case _GetEvolutionChainErrorState() when error != null:
return error(_that.message);case _GetEvolutionChainLoadedState() when loaded != null:
return loaded(_that.evolutionChain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( EvolutionChainEntity evolutionChain)  loaded,}) {final _that = this;
switch (_that) {
case _EvolutionChainInitialState():
return initial();case _GetEvolutionChainLoadingState():
return loading();case _GetEvolutionChainErrorState():
return error(_that.message);case _GetEvolutionChainLoadedState():
return loaded(_that.evolutionChain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( EvolutionChainEntity evolutionChain)?  loaded,}) {final _that = this;
switch (_that) {
case _EvolutionChainInitialState() when initial != null:
return initial();case _GetEvolutionChainLoadingState() when loading != null:
return loading();case _GetEvolutionChainErrorState() when error != null:
return error(_that.message);case _GetEvolutionChainLoadedState() when loaded != null:
return loaded(_that.evolutionChain);case _:
  return null;

}
}

}

/// @nodoc


class _EvolutionChainInitialState implements EvolutionChainState {
  const _EvolutionChainInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState.initial()';
}


}




/// @nodoc


class _GetEvolutionChainLoadingState implements EvolutionChainState {
  const _GetEvolutionChainLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEvolutionChainLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState.loading()';
}


}




/// @nodoc


class _GetEvolutionChainErrorState implements EvolutionChainState {
  const _GetEvolutionChainErrorState(this.message);
  

 final  String message;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEvolutionChainErrorStateCopyWith<_GetEvolutionChainErrorState> get copyWith => __$GetEvolutionChainErrorStateCopyWithImpl<_GetEvolutionChainErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEvolutionChainErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EvolutionChainState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetEvolutionChainErrorStateCopyWith<$Res> implements $EvolutionChainStateCopyWith<$Res> {
  factory _$GetEvolutionChainErrorStateCopyWith(_GetEvolutionChainErrorState value, $Res Function(_GetEvolutionChainErrorState) _then) = __$GetEvolutionChainErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetEvolutionChainErrorStateCopyWithImpl<$Res>
    implements _$GetEvolutionChainErrorStateCopyWith<$Res> {
  __$GetEvolutionChainErrorStateCopyWithImpl(this._self, this._then);

  final _GetEvolutionChainErrorState _self;
  final $Res Function(_GetEvolutionChainErrorState) _then;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetEvolutionChainErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetEvolutionChainLoadedState implements EvolutionChainState {
  const _GetEvolutionChainLoadedState({required this.evolutionChain});
  

 final  EvolutionChainEntity evolutionChain;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEvolutionChainLoadedStateCopyWith<_GetEvolutionChainLoadedState> get copyWith => __$GetEvolutionChainLoadedStateCopyWithImpl<_GetEvolutionChainLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEvolutionChainLoadedState&&(identical(other.evolutionChain, evolutionChain) || other.evolutionChain == evolutionChain));
}


@override
int get hashCode => Object.hash(runtimeType,evolutionChain);

@override
String toString() {
  return 'EvolutionChainState.loaded(evolutionChain: $evolutionChain)';
}


}

/// @nodoc
abstract mixin class _$GetEvolutionChainLoadedStateCopyWith<$Res> implements $EvolutionChainStateCopyWith<$Res> {
  factory _$GetEvolutionChainLoadedStateCopyWith(_GetEvolutionChainLoadedState value, $Res Function(_GetEvolutionChainLoadedState) _then) = __$GetEvolutionChainLoadedStateCopyWithImpl;
@useResult
$Res call({
 EvolutionChainEntity evolutionChain
});


$EvolutionChainEntityCopyWith<$Res> get evolutionChain;

}
/// @nodoc
class __$GetEvolutionChainLoadedStateCopyWithImpl<$Res>
    implements _$GetEvolutionChainLoadedStateCopyWith<$Res> {
  __$GetEvolutionChainLoadedStateCopyWithImpl(this._self, this._then);

  final _GetEvolutionChainLoadedState _self;
  final $Res Function(_GetEvolutionChainLoadedState) _then;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? evolutionChain = null,}) {
  return _then(_GetEvolutionChainLoadedState(
evolutionChain: null == evolutionChain ? _self.evolutionChain : evolutionChain // ignore: cast_nullable_to_non_nullable
as EvolutionChainEntity,
  ));
}

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<$Res> get evolutionChain {
  
  return $EvolutionChainEntityCopyWith<$Res>(_self.evolutionChain, (value) {
    return _then(_self.copyWith(evolutionChain: value));
  });
}
}

// dart format on
