// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_version_group_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveVersionGroupDetailEntity {

@JsonKey(name: 'order') int? get order;@JsonKey(name: 'level_learned_at') int? get levelLearnedAt;@JsonKey(name: 'move_learn_method') MoveLearnMethodEntity? get moveLearnMethod;@JsonKey(name: 'version_group') MoveVersionGroupEntity? get versionGroup;
/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveVersionGroupDetailEntityCopyWith<MoveVersionGroupDetailEntity> get copyWith => _$MoveVersionGroupDetailEntityCopyWithImpl<MoveVersionGroupDetailEntity>(this as MoveVersionGroupDetailEntity, _$identity);

  /// Serializes this MoveVersionGroupDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveVersionGroupDetailEntity&&(identical(other.order, order) || other.order == order)&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,levelLearnedAt,moveLearnMethod,versionGroup);

@override
String toString() {
  return 'MoveVersionGroupDetailEntity(order: $order, levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class $MoveVersionGroupDetailEntityCopyWith<$Res>  {
  factory $MoveVersionGroupDetailEntityCopyWith(MoveVersionGroupDetailEntity value, $Res Function(MoveVersionGroupDetailEntity) _then) = _$MoveVersionGroupDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order') int? order,@JsonKey(name: 'level_learned_at') int? levelLearnedAt,@JsonKey(name: 'move_learn_method') MoveLearnMethodEntity? moveLearnMethod,@JsonKey(name: 'version_group') MoveVersionGroupEntity? versionGroup
});


$MoveLearnMethodEntityCopyWith<$Res>? get moveLearnMethod;$MoveVersionGroupEntityCopyWith<$Res>? get versionGroup;

}
/// @nodoc
class _$MoveVersionGroupDetailEntityCopyWithImpl<$Res>
    implements $MoveVersionGroupDetailEntityCopyWith<$Res> {
  _$MoveVersionGroupDetailEntityCopyWithImpl(this._self, this._then);

  final MoveVersionGroupDetailEntity _self;
  final $Res Function(MoveVersionGroupDetailEntity) _then;

/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = freezed,Object? levelLearnedAt = freezed,Object? moveLearnMethod = freezed,Object? versionGroup = freezed,}) {
  return _then(_self.copyWith(
order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,levelLearnedAt: freezed == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int?,moveLearnMethod: freezed == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as MoveLearnMethodEntity?,versionGroup: freezed == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as MoveVersionGroupEntity?,
  ));
}
/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveLearnMethodEntityCopyWith<$Res>? get moveLearnMethod {
    if (_self.moveLearnMethod == null) {
    return null;
  }

  return $MoveLearnMethodEntityCopyWith<$Res>(_self.moveLearnMethod!, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveVersionGroupEntityCopyWith<$Res>? get versionGroup {
    if (_self.versionGroup == null) {
    return null;
  }

  return $MoveVersionGroupEntityCopyWith<$Res>(_self.versionGroup!, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoveVersionGroupDetailEntity].
extension MoveVersionGroupDetailEntityPatterns on MoveVersionGroupDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveVersionGroupDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveVersionGroupDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveVersionGroupDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order')  int? order, @JsonKey(name: 'level_learned_at')  int? levelLearnedAt, @JsonKey(name: 'move_learn_method')  MoveLearnMethodEntity? moveLearnMethod, @JsonKey(name: 'version_group')  MoveVersionGroupEntity? versionGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity() when $default != null:
return $default(_that.order,_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order')  int? order, @JsonKey(name: 'level_learned_at')  int? levelLearnedAt, @JsonKey(name: 'move_learn_method')  MoveLearnMethodEntity? moveLearnMethod, @JsonKey(name: 'version_group')  MoveVersionGroupEntity? versionGroup)  $default,) {final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity():
return $default(_that.order,_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order')  int? order, @JsonKey(name: 'level_learned_at')  int? levelLearnedAt, @JsonKey(name: 'move_learn_method')  MoveLearnMethodEntity? moveLearnMethod, @JsonKey(name: 'version_group')  MoveVersionGroupEntity? versionGroup)?  $default,) {final _that = this;
switch (_that) {
case _MoveVersionGroupDetailEntity() when $default != null:
return $default(_that.order,_that.levelLearnedAt,_that.moveLearnMethod,_that.versionGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveVersionGroupDetailEntity implements MoveVersionGroupDetailEntity {
  const _MoveVersionGroupDetailEntity({@JsonKey(name: 'order') this.order, @JsonKey(name: 'level_learned_at') this.levelLearnedAt, @JsonKey(name: 'move_learn_method') this.moveLearnMethod, @JsonKey(name: 'version_group') this.versionGroup});
  factory _MoveVersionGroupDetailEntity.fromJson(Map<String, dynamic> json) => _$MoveVersionGroupDetailEntityFromJson(json);

@override@JsonKey(name: 'order') final  int? order;
@override@JsonKey(name: 'level_learned_at') final  int? levelLearnedAt;
@override@JsonKey(name: 'move_learn_method') final  MoveLearnMethodEntity? moveLearnMethod;
@override@JsonKey(name: 'version_group') final  MoveVersionGroupEntity? versionGroup;

/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveVersionGroupDetailEntityCopyWith<_MoveVersionGroupDetailEntity> get copyWith => __$MoveVersionGroupDetailEntityCopyWithImpl<_MoveVersionGroupDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveVersionGroupDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveVersionGroupDetailEntity&&(identical(other.order, order) || other.order == order)&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,levelLearnedAt,moveLearnMethod,versionGroup);

@override
String toString() {
  return 'MoveVersionGroupDetailEntity(order: $order, levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class _$MoveVersionGroupDetailEntityCopyWith<$Res> implements $MoveVersionGroupDetailEntityCopyWith<$Res> {
  factory _$MoveVersionGroupDetailEntityCopyWith(_MoveVersionGroupDetailEntity value, $Res Function(_MoveVersionGroupDetailEntity) _then) = __$MoveVersionGroupDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order') int? order,@JsonKey(name: 'level_learned_at') int? levelLearnedAt,@JsonKey(name: 'move_learn_method') MoveLearnMethodEntity? moveLearnMethod,@JsonKey(name: 'version_group') MoveVersionGroupEntity? versionGroup
});


@override $MoveLearnMethodEntityCopyWith<$Res>? get moveLearnMethod;@override $MoveVersionGroupEntityCopyWith<$Res>? get versionGroup;

}
/// @nodoc
class __$MoveVersionGroupDetailEntityCopyWithImpl<$Res>
    implements _$MoveVersionGroupDetailEntityCopyWith<$Res> {
  __$MoveVersionGroupDetailEntityCopyWithImpl(this._self, this._then);

  final _MoveVersionGroupDetailEntity _self;
  final $Res Function(_MoveVersionGroupDetailEntity) _then;

/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = freezed,Object? levelLearnedAt = freezed,Object? moveLearnMethod = freezed,Object? versionGroup = freezed,}) {
  return _then(_MoveVersionGroupDetailEntity(
order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,levelLearnedAt: freezed == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int?,moveLearnMethod: freezed == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as MoveLearnMethodEntity?,versionGroup: freezed == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as MoveVersionGroupEntity?,
  ));
}

/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveLearnMethodEntityCopyWith<$Res>? get moveLearnMethod {
    if (_self.moveLearnMethod == null) {
    return null;
  }

  return $MoveLearnMethodEntityCopyWith<$Res>(_self.moveLearnMethod!, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of MoveVersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveVersionGroupEntityCopyWith<$Res>? get versionGroup {
    if (_self.versionGroup == null) {
    return null;
  }

  return $MoveVersionGroupEntityCopyWith<$Res>(_self.versionGroup!, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}

// dart format on
