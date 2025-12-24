// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_version_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveVersionGroupEntity {

@JsonKey(name: 'name') String? get name;
/// Create a copy of MoveVersionGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveVersionGroupEntityCopyWith<MoveVersionGroupEntity> get copyWith => _$MoveVersionGroupEntityCopyWithImpl<MoveVersionGroupEntity>(this as MoveVersionGroupEntity, _$identity);

  /// Serializes this MoveVersionGroupEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveVersionGroupEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoveVersionGroupEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $MoveVersionGroupEntityCopyWith<$Res>  {
  factory $MoveVersionGroupEntityCopyWith(MoveVersionGroupEntity value, $Res Function(MoveVersionGroupEntity) _then) = _$MoveVersionGroupEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$MoveVersionGroupEntityCopyWithImpl<$Res>
    implements $MoveVersionGroupEntityCopyWith<$Res> {
  _$MoveVersionGroupEntityCopyWithImpl(this._self, this._then);

  final MoveVersionGroupEntity _self;
  final $Res Function(MoveVersionGroupEntity) _then;

/// Create a copy of MoveVersionGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoveVersionGroupEntity].
extension MoveVersionGroupEntityPatterns on MoveVersionGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveVersionGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveVersionGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveVersionGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveVersionGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveVersionGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveVersionGroupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveVersionGroupEntity() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _MoveVersionGroupEntity():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _MoveVersionGroupEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveVersionGroupEntity implements MoveVersionGroupEntity {
  const _MoveVersionGroupEntity({@JsonKey(name: 'name') this.name});
  factory _MoveVersionGroupEntity.fromJson(Map<String, dynamic> json) => _$MoveVersionGroupEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of MoveVersionGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveVersionGroupEntityCopyWith<_MoveVersionGroupEntity> get copyWith => __$MoveVersionGroupEntityCopyWithImpl<_MoveVersionGroupEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveVersionGroupEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveVersionGroupEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoveVersionGroupEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$MoveVersionGroupEntityCopyWith<$Res> implements $MoveVersionGroupEntityCopyWith<$Res> {
  factory _$MoveVersionGroupEntityCopyWith(_MoveVersionGroupEntity value, $Res Function(_MoveVersionGroupEntity) _then) = __$MoveVersionGroupEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$MoveVersionGroupEntityCopyWithImpl<$Res>
    implements _$MoveVersionGroupEntityCopyWith<$Res> {
  __$MoveVersionGroupEntityCopyWithImpl(this._self, this._then);

  final _MoveVersionGroupEntity _self;
  final $Res Function(_MoveVersionGroupEntity) _then;

/// Create a copy of MoveVersionGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_MoveVersionGroupEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
