// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_slot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeSlotEntity {

@JsonKey(name: 'slot') int? get slot;@JsonKey(name: 'type') TypeEntity? get type;
/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeSlotEntityCopyWith<TypeSlotEntity> get copyWith => _$TypeSlotEntityCopyWithImpl<TypeSlotEntity>(this as TypeSlotEntity, _$identity);

  /// Serializes this TypeSlotEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeSlotEntity&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeSlotEntity(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeSlotEntityCopyWith<$Res>  {
  factory $TypeSlotEntityCopyWith(TypeSlotEntity value, $Res Function(TypeSlotEntity) _then) = _$TypeSlotEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'slot') int? slot,@JsonKey(name: 'type') TypeEntity? type
});


$TypeEntityCopyWith<$Res>? get type;

}
/// @nodoc
class _$TypeSlotEntityCopyWithImpl<$Res>
    implements $TypeSlotEntityCopyWith<$Res> {
  _$TypeSlotEntityCopyWithImpl(this._self, this._then);

  final TypeSlotEntity _self;
  final $Res Function(TypeSlotEntity) _then;

/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeEntity?,
  ));
}
/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeEntityCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $TypeEntityCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [TypeSlotEntity].
extension TypeSlotEntityPatterns on TypeSlotEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeSlotEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeSlotEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeSlotEntity value)  $default,){
final _that = this;
switch (_that) {
case _TypeSlotEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeSlotEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TypeSlotEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'type')  TypeEntity? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeSlotEntity() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'type')  TypeEntity? type)  $default,) {final _that = this;
switch (_that) {
case _TypeSlotEntity():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'type')  TypeEntity? type)?  $default,) {final _that = this;
switch (_that) {
case _TypeSlotEntity() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeSlotEntity implements TypeSlotEntity {
  const _TypeSlotEntity({@JsonKey(name: 'slot') this.slot, @JsonKey(name: 'type') this.type});
  factory _TypeSlotEntity.fromJson(Map<String, dynamic> json) => _$TypeSlotEntityFromJson(json);

@override@JsonKey(name: 'slot') final  int? slot;
@override@JsonKey(name: 'type') final  TypeEntity? type;

/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeSlotEntityCopyWith<_TypeSlotEntity> get copyWith => __$TypeSlotEntityCopyWithImpl<_TypeSlotEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeSlotEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeSlotEntity&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeSlotEntity(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeSlotEntityCopyWith<$Res> implements $TypeSlotEntityCopyWith<$Res> {
  factory _$TypeSlotEntityCopyWith(_TypeSlotEntity value, $Res Function(_TypeSlotEntity) _then) = __$TypeSlotEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'slot') int? slot,@JsonKey(name: 'type') TypeEntity? type
});


@override $TypeEntityCopyWith<$Res>? get type;

}
/// @nodoc
class __$TypeSlotEntityCopyWithImpl<$Res>
    implements _$TypeSlotEntityCopyWith<$Res> {
  __$TypeSlotEntityCopyWithImpl(this._self, this._then);

  final _TypeSlotEntity _self;
  final $Res Function(_TypeSlotEntity) _then;

/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = freezed,Object? type = freezed,}) {
  return _then(_TypeSlotEntity(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeEntity?,
  ));
}

/// Create a copy of TypeSlotEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeEntityCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $TypeEntityCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

// dart format on
