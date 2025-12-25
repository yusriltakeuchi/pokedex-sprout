// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_machine_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveMachineEntity {

@JsonKey(name: 'machine') MachineEntity? get machine;
/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveMachineEntityCopyWith<MoveMachineEntity> get copyWith => _$MoveMachineEntityCopyWithImpl<MoveMachineEntity>(this as MoveMachineEntity, _$identity);

  /// Serializes this MoveMachineEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveMachineEntity&&(identical(other.machine, machine) || other.machine == machine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machine);

@override
String toString() {
  return 'MoveMachineEntity(machine: $machine)';
}


}

/// @nodoc
abstract mixin class $MoveMachineEntityCopyWith<$Res>  {
  factory $MoveMachineEntityCopyWith(MoveMachineEntity value, $Res Function(MoveMachineEntity) _then) = _$MoveMachineEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'machine') MachineEntity? machine
});


$MachineEntityCopyWith<$Res>? get machine;

}
/// @nodoc
class _$MoveMachineEntityCopyWithImpl<$Res>
    implements $MoveMachineEntityCopyWith<$Res> {
  _$MoveMachineEntityCopyWithImpl(this._self, this._then);

  final MoveMachineEntity _self;
  final $Res Function(MoveMachineEntity) _then;

/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? machine = freezed,}) {
  return _then(_self.copyWith(
machine: freezed == machine ? _self.machine : machine // ignore: cast_nullable_to_non_nullable
as MachineEntity?,
  ));
}
/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MachineEntityCopyWith<$Res>? get machine {
    if (_self.machine == null) {
    return null;
  }

  return $MachineEntityCopyWith<$Res>(_self.machine!, (value) {
    return _then(_self.copyWith(machine: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoveMachineEntity].
extension MoveMachineEntityPatterns on MoveMachineEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveMachineEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveMachineEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveMachineEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveMachineEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveMachineEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveMachineEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'machine')  MachineEntity? machine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveMachineEntity() when $default != null:
return $default(_that.machine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'machine')  MachineEntity? machine)  $default,) {final _that = this;
switch (_that) {
case _MoveMachineEntity():
return $default(_that.machine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'machine')  MachineEntity? machine)?  $default,) {final _that = this;
switch (_that) {
case _MoveMachineEntity() when $default != null:
return $default(_that.machine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveMachineEntity implements MoveMachineEntity {
  const _MoveMachineEntity({@JsonKey(name: 'machine') this.machine});
  factory _MoveMachineEntity.fromJson(Map<String, dynamic> json) => _$MoveMachineEntityFromJson(json);

@override@JsonKey(name: 'machine') final  MachineEntity? machine;

/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveMachineEntityCopyWith<_MoveMachineEntity> get copyWith => __$MoveMachineEntityCopyWithImpl<_MoveMachineEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveMachineEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveMachineEntity&&(identical(other.machine, machine) || other.machine == machine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machine);

@override
String toString() {
  return 'MoveMachineEntity(machine: $machine)';
}


}

/// @nodoc
abstract mixin class _$MoveMachineEntityCopyWith<$Res> implements $MoveMachineEntityCopyWith<$Res> {
  factory _$MoveMachineEntityCopyWith(_MoveMachineEntity value, $Res Function(_MoveMachineEntity) _then) = __$MoveMachineEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'machine') MachineEntity? machine
});


@override $MachineEntityCopyWith<$Res>? get machine;

}
/// @nodoc
class __$MoveMachineEntityCopyWithImpl<$Res>
    implements _$MoveMachineEntityCopyWith<$Res> {
  __$MoveMachineEntityCopyWithImpl(this._self, this._then);

  final _MoveMachineEntity _self;
  final $Res Function(_MoveMachineEntity) _then;

/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? machine = freezed,}) {
  return _then(_MoveMachineEntity(
machine: freezed == machine ? _self.machine : machine // ignore: cast_nullable_to_non_nullable
as MachineEntity?,
  ));
}

/// Create a copy of MoveMachineEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MachineEntityCopyWith<$Res>? get machine {
    if (_self.machine == null) {
    return null;
  }

  return $MachineEntityCopyWith<$Res>(_self.machine!, (value) {
    return _then(_self.copyWith(machine: value));
  });
}
}

// dart format on
