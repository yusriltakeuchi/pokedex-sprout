// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EggGroupEntity {

@JsonKey(name: 'name') String? get name;
/// Create a copy of EggGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EggGroupEntityCopyWith<EggGroupEntity> get copyWith => _$EggGroupEntityCopyWithImpl<EggGroupEntity>(this as EggGroupEntity, _$identity);

  /// Serializes this EggGroupEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EggGroupEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'EggGroupEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $EggGroupEntityCopyWith<$Res>  {
  factory $EggGroupEntityCopyWith(EggGroupEntity value, $Res Function(EggGroupEntity) _then) = _$EggGroupEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$EggGroupEntityCopyWithImpl<$Res>
    implements $EggGroupEntityCopyWith<$Res> {
  _$EggGroupEntityCopyWithImpl(this._self, this._then);

  final EggGroupEntity _self;
  final $Res Function(EggGroupEntity) _then;

/// Create a copy of EggGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EggGroupEntity].
extension EggGroupEntityPatterns on EggGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EggGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EggGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EggGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _EggGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EggGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EggGroupEntity() when $default != null:
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
case _EggGroupEntity() when $default != null:
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
case _EggGroupEntity():
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
case _EggGroupEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EggGroupEntity implements EggGroupEntity {
  const _EggGroupEntity({@JsonKey(name: 'name') this.name});
  factory _EggGroupEntity.fromJson(Map<String, dynamic> json) => _$EggGroupEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of EggGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EggGroupEntityCopyWith<_EggGroupEntity> get copyWith => __$EggGroupEntityCopyWithImpl<_EggGroupEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EggGroupEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EggGroupEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'EggGroupEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$EggGroupEntityCopyWith<$Res> implements $EggGroupEntityCopyWith<$Res> {
  factory _$EggGroupEntityCopyWith(_EggGroupEntity value, $Res Function(_EggGroupEntity) _then) = __$EggGroupEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$EggGroupEntityCopyWithImpl<$Res>
    implements _$EggGroupEntityCopyWith<$Res> {
  __$EggGroupEntityCopyWithImpl(this._self, this._then);

  final _EggGroupEntity _self;
  final $Res Function(_EggGroupEntity) _then;

/// Create a copy of EggGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_EggGroupEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
