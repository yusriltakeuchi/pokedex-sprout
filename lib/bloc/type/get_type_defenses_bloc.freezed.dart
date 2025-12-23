// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_type_defenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTypeDefensesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTypeDefensesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetTypeDefensesState()';
}


}

/// @nodoc
class $GetTypeDefensesStateCopyWith<$Res>  {
$GetTypeDefensesStateCopyWith(GetTypeDefensesState _, $Res Function(GetTypeDefensesState) __);
}


/// Adds pattern-matching-related methods to [GetTypeDefensesState].
extension GetTypeDefensesStatePatterns on GetTypeDefensesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTypeDefensesInitialState value)?  initial,TResult Function( _GetGetTypeDefensesLoadingState value)?  loading,TResult Function( _GetGetTypeDefensesErrorState value)?  error,TResult Function( _GetGetTypeDefensesLoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState() when initial != null:
return initial(_that);case _GetGetTypeDefensesLoadingState() when loading != null:
return loading(_that);case _GetGetTypeDefensesErrorState() when error != null:
return error(_that);case _GetGetTypeDefensesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTypeDefensesInitialState value)  initial,required TResult Function( _GetGetTypeDefensesLoadingState value)  loading,required TResult Function( _GetGetTypeDefensesErrorState value)  error,required TResult Function( _GetGetTypeDefensesLoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState():
return initial(_that);case _GetGetTypeDefensesLoadingState():
return loading(_that);case _GetGetTypeDefensesErrorState():
return error(_that);case _GetGetTypeDefensesLoadedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTypeDefensesInitialState value)?  initial,TResult? Function( _GetGetTypeDefensesLoadingState value)?  loading,TResult? Function( _GetGetTypeDefensesErrorState value)?  error,TResult? Function( _GetGetTypeDefensesLoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState() when initial != null:
return initial(_that);case _GetGetTypeDefensesLoadingState() when loading != null:
return loading(_that);case _GetGetTypeDefensesErrorState() when error != null:
return error(_that);case _GetGetTypeDefensesLoadedState() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<TypeDefenseEntity> vulnerabilities,  List<TypeDefenseEntity> resistances,  List<TypeDefenseEntity> immunities)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState() when initial != null:
return initial();case _GetGetTypeDefensesLoadingState() when loading != null:
return loading();case _GetGetTypeDefensesErrorState() when error != null:
return error(_that.message);case _GetGetTypeDefensesLoadedState() when loaded != null:
return loaded(_that.vulnerabilities,_that.resistances,_that.immunities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<TypeDefenseEntity> vulnerabilities,  List<TypeDefenseEntity> resistances,  List<TypeDefenseEntity> immunities)  loaded,}) {final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState():
return initial();case _GetGetTypeDefensesLoadingState():
return loading();case _GetGetTypeDefensesErrorState():
return error(_that.message);case _GetGetTypeDefensesLoadedState():
return loaded(_that.vulnerabilities,_that.resistances,_that.immunities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<TypeDefenseEntity> vulnerabilities,  List<TypeDefenseEntity> resistances,  List<TypeDefenseEntity> immunities)?  loaded,}) {final _that = this;
switch (_that) {
case _GetTypeDefensesInitialState() when initial != null:
return initial();case _GetGetTypeDefensesLoadingState() when loading != null:
return loading();case _GetGetTypeDefensesErrorState() when error != null:
return error(_that.message);case _GetGetTypeDefensesLoadedState() when loaded != null:
return loaded(_that.vulnerabilities,_that.resistances,_that.immunities);case _:
  return null;

}
}

}

/// @nodoc


class _GetTypeDefensesInitialState implements GetTypeDefensesState {
  const _GetTypeDefensesInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefensesInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetTypeDefensesState.initial()';
}


}




/// @nodoc


class _GetGetTypeDefensesLoadingState implements GetTypeDefensesState {
  const _GetGetTypeDefensesLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetTypeDefensesLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetTypeDefensesState.loading()';
}


}




/// @nodoc


class _GetGetTypeDefensesErrorState implements GetTypeDefensesState {
  const _GetGetTypeDefensesErrorState(this.message);
  

 final  String message;

/// Create a copy of GetTypeDefensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetTypeDefensesErrorStateCopyWith<_GetGetTypeDefensesErrorState> get copyWith => __$GetGetTypeDefensesErrorStateCopyWithImpl<_GetGetTypeDefensesErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetTypeDefensesErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetTypeDefensesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetGetTypeDefensesErrorStateCopyWith<$Res> implements $GetTypeDefensesStateCopyWith<$Res> {
  factory _$GetGetTypeDefensesErrorStateCopyWith(_GetGetTypeDefensesErrorState value, $Res Function(_GetGetTypeDefensesErrorState) _then) = __$GetGetTypeDefensesErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetGetTypeDefensesErrorStateCopyWithImpl<$Res>
    implements _$GetGetTypeDefensesErrorStateCopyWith<$Res> {
  __$GetGetTypeDefensesErrorStateCopyWithImpl(this._self, this._then);

  final _GetGetTypeDefensesErrorState _self;
  final $Res Function(_GetGetTypeDefensesErrorState) _then;

/// Create a copy of GetTypeDefensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetGetTypeDefensesErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetGetTypeDefensesLoadedState implements GetTypeDefensesState {
  const _GetGetTypeDefensesLoadedState({required final  List<TypeDefenseEntity> vulnerabilities, required final  List<TypeDefenseEntity> resistances, required final  List<TypeDefenseEntity> immunities}): _vulnerabilities = vulnerabilities,_resistances = resistances,_immunities = immunities;
  

 final  List<TypeDefenseEntity> _vulnerabilities;
 List<TypeDefenseEntity> get vulnerabilities {
  if (_vulnerabilities is EqualUnmodifiableListView) return _vulnerabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vulnerabilities);
}

 final  List<TypeDefenseEntity> _resistances;
 List<TypeDefenseEntity> get resistances {
  if (_resistances is EqualUnmodifiableListView) return _resistances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resistances);
}

 final  List<TypeDefenseEntity> _immunities;
 List<TypeDefenseEntity> get immunities {
  if (_immunities is EqualUnmodifiableListView) return _immunities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_immunities);
}


/// Create a copy of GetTypeDefensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGetTypeDefensesLoadedStateCopyWith<_GetGetTypeDefensesLoadedState> get copyWith => __$GetGetTypeDefensesLoadedStateCopyWithImpl<_GetGetTypeDefensesLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGetTypeDefensesLoadedState&&const DeepCollectionEquality().equals(other._vulnerabilities, _vulnerabilities)&&const DeepCollectionEquality().equals(other._resistances, _resistances)&&const DeepCollectionEquality().equals(other._immunities, _immunities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vulnerabilities),const DeepCollectionEquality().hash(_resistances),const DeepCollectionEquality().hash(_immunities));

@override
String toString() {
  return 'GetTypeDefensesState.loaded(vulnerabilities: $vulnerabilities, resistances: $resistances, immunities: $immunities)';
}


}

/// @nodoc
abstract mixin class _$GetGetTypeDefensesLoadedStateCopyWith<$Res> implements $GetTypeDefensesStateCopyWith<$Res> {
  factory _$GetGetTypeDefensesLoadedStateCopyWith(_GetGetTypeDefensesLoadedState value, $Res Function(_GetGetTypeDefensesLoadedState) _then) = __$GetGetTypeDefensesLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<TypeDefenseEntity> vulnerabilities, List<TypeDefenseEntity> resistances, List<TypeDefenseEntity> immunities
});




}
/// @nodoc
class __$GetGetTypeDefensesLoadedStateCopyWithImpl<$Res>
    implements _$GetGetTypeDefensesLoadedStateCopyWith<$Res> {
  __$GetGetTypeDefensesLoadedStateCopyWithImpl(this._self, this._then);

  final _GetGetTypeDefensesLoadedState _self;
  final $Res Function(_GetGetTypeDefensesLoadedState) _then;

/// Create a copy of GetTypeDefensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? vulnerabilities = null,Object? resistances = null,Object? immunities = null,}) {
  return _then(_GetGetTypeDefensesLoadedState(
vulnerabilities: null == vulnerabilities ? _self._vulnerabilities : vulnerabilities // ignore: cast_nullable_to_non_nullable
as List<TypeDefenseEntity>,resistances: null == resistances ? _self._resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<TypeDefenseEntity>,immunities: null == immunities ? _self._immunities : immunities // ignore: cast_nullable_to_non_nullable
as List<TypeDefenseEntity>,
  ));
}


}

// dart format on
