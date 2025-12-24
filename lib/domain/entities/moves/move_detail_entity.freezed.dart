// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveDetailEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'accuracy') int? get accuracy;@JsonKey(name: 'pp') int? get pp;@JsonKey(name: 'priority') int? get priority;@JsonKey(name: 'power') int? get power;@JsonKey(name: 'damage_class') MoveDamageClassEntity? get damageClass;@JsonKey(name: 'type') TypeEntity? get type;
/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveDetailEntityCopyWith<MoveDetailEntity> get copyWith => _$MoveDetailEntityCopyWithImpl<MoveDetailEntity>(this as MoveDetailEntity, _$identity);

  /// Serializes this MoveDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.power, power) || other.power == power)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,accuracy,pp,priority,power,damageClass,type);

@override
String toString() {
  return 'MoveDetailEntity(id: $id, name: $name, accuracy: $accuracy, pp: $pp, priority: $priority, power: $power, damageClass: $damageClass, type: $type)';
}


}

/// @nodoc
abstract mixin class $MoveDetailEntityCopyWith<$Res>  {
  factory $MoveDetailEntityCopyWith(MoveDetailEntity value, $Res Function(MoveDetailEntity) _then) = _$MoveDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'accuracy') int? accuracy,@JsonKey(name: 'pp') int? pp,@JsonKey(name: 'priority') int? priority,@JsonKey(name: 'power') int? power,@JsonKey(name: 'damage_class') MoveDamageClassEntity? damageClass,@JsonKey(name: 'type') TypeEntity? type
});


$MoveDamageClassEntityCopyWith<$Res>? get damageClass;$TypeEntityCopyWith<$Res>? get type;

}
/// @nodoc
class _$MoveDetailEntityCopyWithImpl<$Res>
    implements $MoveDetailEntityCopyWith<$Res> {
  _$MoveDetailEntityCopyWithImpl(this._self, this._then);

  final MoveDetailEntity _self;
  final $Res Function(MoveDetailEntity) _then;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? accuracy = freezed,Object? pp = freezed,Object? priority = freezed,Object? power = freezed,Object? damageClass = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,pp: freezed == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,damageClass: freezed == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as MoveDamageClassEntity?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeEntity?,
  ));
}
/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveDamageClassEntityCopyWith<$Res>? get damageClass {
    if (_self.damageClass == null) {
    return null;
  }

  return $MoveDamageClassEntityCopyWith<$Res>(_self.damageClass!, (value) {
    return _then(_self.copyWith(damageClass: value));
  });
}/// Create a copy of MoveDetailEntity
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


/// Adds pattern-matching-related methods to [MoveDetailEntity].
extension MoveDetailEntityPatterns on MoveDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'accuracy')  int? accuracy, @JsonKey(name: 'pp')  int? pp, @JsonKey(name: 'priority')  int? priority, @JsonKey(name: 'power')  int? power, @JsonKey(name: 'damage_class')  MoveDamageClassEntity? damageClass, @JsonKey(name: 'type')  TypeEntity? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.accuracy,_that.pp,_that.priority,_that.power,_that.damageClass,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'accuracy')  int? accuracy, @JsonKey(name: 'pp')  int? pp, @JsonKey(name: 'priority')  int? priority, @JsonKey(name: 'power')  int? power, @JsonKey(name: 'damage_class')  MoveDamageClassEntity? damageClass, @JsonKey(name: 'type')  TypeEntity? type)  $default,) {final _that = this;
switch (_that) {
case _MoveDetailEntity():
return $default(_that.id,_that.name,_that.accuracy,_that.pp,_that.priority,_that.power,_that.damageClass,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'accuracy')  int? accuracy, @JsonKey(name: 'pp')  int? pp, @JsonKey(name: 'priority')  int? priority, @JsonKey(name: 'power')  int? power, @JsonKey(name: 'damage_class')  MoveDamageClassEntity? damageClass, @JsonKey(name: 'type')  TypeEntity? type)?  $default,) {final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.accuracy,_that.pp,_that.priority,_that.power,_that.damageClass,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveDetailEntity implements MoveDetailEntity {
  const _MoveDetailEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'accuracy') this.accuracy, @JsonKey(name: 'pp') this.pp, @JsonKey(name: 'priority') this.priority, @JsonKey(name: 'power') this.power, @JsonKey(name: 'damage_class') this.damageClass, @JsonKey(name: 'type') this.type});
  factory _MoveDetailEntity.fromJson(Map<String, dynamic> json) => _$MoveDetailEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'accuracy') final  int? accuracy;
@override@JsonKey(name: 'pp') final  int? pp;
@override@JsonKey(name: 'priority') final  int? priority;
@override@JsonKey(name: 'power') final  int? power;
@override@JsonKey(name: 'damage_class') final  MoveDamageClassEntity? damageClass;
@override@JsonKey(name: 'type') final  TypeEntity? type;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveDetailEntityCopyWith<_MoveDetailEntity> get copyWith => __$MoveDetailEntityCopyWithImpl<_MoveDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.power, power) || other.power == power)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,accuracy,pp,priority,power,damageClass,type);

@override
String toString() {
  return 'MoveDetailEntity(id: $id, name: $name, accuracy: $accuracy, pp: $pp, priority: $priority, power: $power, damageClass: $damageClass, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MoveDetailEntityCopyWith<$Res> implements $MoveDetailEntityCopyWith<$Res> {
  factory _$MoveDetailEntityCopyWith(_MoveDetailEntity value, $Res Function(_MoveDetailEntity) _then) = __$MoveDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'accuracy') int? accuracy,@JsonKey(name: 'pp') int? pp,@JsonKey(name: 'priority') int? priority,@JsonKey(name: 'power') int? power,@JsonKey(name: 'damage_class') MoveDamageClassEntity? damageClass,@JsonKey(name: 'type') TypeEntity? type
});


@override $MoveDamageClassEntityCopyWith<$Res>? get damageClass;@override $TypeEntityCopyWith<$Res>? get type;

}
/// @nodoc
class __$MoveDetailEntityCopyWithImpl<$Res>
    implements _$MoveDetailEntityCopyWith<$Res> {
  __$MoveDetailEntityCopyWithImpl(this._self, this._then);

  final _MoveDetailEntity _self;
  final $Res Function(_MoveDetailEntity) _then;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? accuracy = freezed,Object? pp = freezed,Object? priority = freezed,Object? power = freezed,Object? damageClass = freezed,Object? type = freezed,}) {
  return _then(_MoveDetailEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,pp: freezed == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,damageClass: freezed == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as MoveDamageClassEntity?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeEntity?,
  ));
}

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveDamageClassEntityCopyWith<$Res>? get damageClass {
    if (_self.damageClass == null) {
    return null;
  }

  return $MoveDamageClassEntityCopyWith<$Res>(_self.damageClass!, (value) {
    return _then(_self.copyWith(damageClass: value));
  });
}/// Create a copy of MoveDetailEntity
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
