// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_species_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetSpeciesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSpeciesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState()';
}


}

/// @nodoc
class $GetSpeciesStateCopyWith<$Res>  {
$GetSpeciesStateCopyWith(GetSpeciesState _, $Res Function(GetSpeciesState) __);
}


/// Adds pattern-matching-related methods to [GetSpeciesState].
extension GetSpeciesStatePatterns on GetSpeciesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSpeciesInitialState value)?  initial,TResult Function( _GetGetSpeciesLoadingState value)?  loading,TResult Function( _GetGetSpeciesErrorState value)?  error,TResult Function( _GetGetSpeciesLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSpeciesInitialState() when initial != null:
return initial(_that);case _GetGetSpeciesLoadingState() when loading != null:
return loading(_that);case _GetGetSpeciesErrorState() when error != null:
return error(_that);case _GetGetSpeciesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSpeciesInitialState value)  initial,required TResult Function( _GetGetSpeciesLoadingState value)  loading,required TResult Function( _GetGetSpeciesErrorState value)  error,required TResult Function( _GetGetSpeciesLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetSpeciesInitialState():
return initial(_that);case _GetGetSpeciesLoadingState():
return loading(_that);case _GetGetSpeciesErrorState():
return error(_that);case _GetGetSpeciesLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSpeciesInitialState value)?  initial,TResult? Function( _GetGetSpeciesLoadingState value)?  loading,TResult? Function( _GetGetSpeciesErrorState value)?  error,TResult? Function( _GetGetSpeciesLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetSpeciesInitialState() when initial != null:
return initial(_that);case _GetGetSpeciesLoadingState() when loading != null:
return loading(_that);case _GetGetSpeciesErrorState() when error != null:
return error(_that);case _GetGetSpeciesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( SpeciesEntity species)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSpeciesInitialState() when initial != null:
return initial();case _GetGetSpeciesLoadingState() when loading != null:
return loading();case _GetGetSpeciesErrorState() when error != null:
return error(_that.message);case _GetGetSpeciesLoadedState() when loaded != null:
return loaded(_that.species);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( SpeciesEntity species)  loaded,}) {final _that = this;
switch (_that) {
case _GetSpeciesInitialState():
return initial();case _GetGetSpeciesLoadingState():
return loading();case _GetGetSpeciesErrorState():
return error(_that.message);case _GetGetSpeciesLoadedState():
return loaded(_that.species);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( SpeciesEntity species)?  loaded,}) {final _that = this;
switch (_that) {
case _GetSpeciesInitialState() when initial != null:
return initial();case _GetGetSpeciesLoadingState() when loading != null:
return loading();case _GetGetSpeciesErrorState() when error != null:
return error(_that.message);case _GetGetSpeciesLoadedState() when loaded != null:
return loaded(_that.species);case _:
  return null;

}
}

}

/// @nodoc


class _GetSpeciesInitialState implements GetSpeciesState {
  const _GetSpeciesInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpeciesInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState.initial()';
}


}




/// @nodoc


class _GetGetSpeciesLoadingState implements GetSpeciesState {
  const _GetGetSpeciesLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetSpeciesLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState.loading()';
}


}




/// @nodoc


class _GetGetSpeciesErrorState implements GetSpeciesState {
  const _GetGetSpeciesErrorState(this.message);
  

 final  String message;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetSpeciesErrorStateCopyWith<_GetGetSpeciesErrorState> get copyWith => __$GetGetSpeciesErrorStateCopyWithImpl<_GetGetSpeciesErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetSpeciesErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetSpeciesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetSpeciesErrorStateCopyWith<$Res> implements $GetSpeciesStateCopyWith<$Res> {
  factory _$GetGetSpeciesErrorStateCopyWith(_GetGetSpeciesErrorState value, $Res Function(_GetGetSpeciesErrorState) _then) = __$GetGetSpeciesErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetSpeciesErrorStateCopyWithImpl<$Res>
    implements _$GetGetSpeciesErrorStateCopyWith<$Res> {
  __$GetGetSpeciesErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetSpeciesErrorState _self;
  final $Res Function(_GetGetSpeciesErrorState) _then;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetSpeciesErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetSpeciesLoadedState implements GetSpeciesState {
  const _GetGetSpeciesLoadedState({required this.species});
  

 final  SpeciesEntity species;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetSpeciesLoadedStateCopyWith<_GetGetSpeciesLoadedState> get copyWith => __$GetGetSpeciesLoadedStateCopyWithImpl<_GetGetSpeciesLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetSpeciesLoadedState&&(identical(other.species, species) || other.species == species));
}


@override
int get hashCode => Object.hash(runtimeType,species);

@override
String toString() {
  return 'GetSpeciesState.loaded(species: $species)';
}


}

/// @nodoc
abstract mixin class _$GetGetSpeciesLoadedStateCopyWith<$Res> implements $GetSpeciesStateCopyWith<$Res> {
  factory _$GetGetSpeciesLoadedStateCopyWith(_GetGetSpeciesLoadedState value, $Res Function(_GetGetSpeciesLoadedState) _then) = __$GetGetSpeciesLoadedStateCopyWithImpl;
@useResult
$Res call({
 SpeciesEntity species
});


$SpeciesEntityCopyWith<$Res> get species;

}
/// @nodoc
class __$GetGetSpeciesLoadedStateCopyWithImpl<$Res>
    implements _$GetGetSpeciesLoadedStateCopyWith<$Res> {
  __$GetGetSpeciesLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetSpeciesLoadedState _self;
  final $Res Function(_GetGetSpeciesLoadedState) _then;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? species = null,}) {
  return _then(_GetGetSpeciesLoadedState(
species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity,
  ));
}

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res> get species {
  
  return $SpeciesEntityCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}

// dart format on
