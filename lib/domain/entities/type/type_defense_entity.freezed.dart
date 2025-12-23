// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_defense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeDefenseEntity {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'multiplier') double? get multiplier;
/// Create a copy of TypeDefenseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDefenseEntityCopyWith<TypeDefenseEntity> get copyWith => _$TypeDefenseEntityCopyWithImpl<TypeDefenseEntity>(this as TypeDefenseEntity, _$identity);

  /// Serializes this TypeDefenseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDefenseEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,multiplier);

@override
String toString() {
  return 'TypeDefenseEntity(name: $name, multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class $TypeDefenseEntityCopyWith<$Res>  {
  factory $TypeDefenseEntityCopyWith(TypeDefenseEntity value, $Res Function(TypeDefenseEntity) _then) = _$TypeDefenseEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'multiplier') double? multiplier
});




}
/// @nodoc
class _$TypeDefenseEntityCopyWithImpl<$Res>
    implements $TypeDefenseEntityCopyWith<$Res> {
  _$TypeDefenseEntityCopyWithImpl(this._self, this._then);

  final TypeDefenseEntity _self;
  final $Res Function(TypeDefenseEntity) _then;

/// Create a copy of TypeDefenseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? multiplier = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,multiplier: freezed == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeDefenseEntity].
extension TypeDefenseEntityPatterns on TypeDefenseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeDefenseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeDefenseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeDefenseEntity value)  $default,){
final _that = this;
switch (_that) {
case _TypeDefenseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeDefenseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TypeDefenseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'multiplier')  double? multiplier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeDefenseEntity() when $default != null:
return $default(_that.name,_that.multiplier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'multiplier')  double? multiplier)  $default,) {final _that = this;
switch (_that) {
case _TypeDefenseEntity():
return $default(_that.name,_that.multiplier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'multiplier')  double? multiplier)?  $default,) {final _that = this;
switch (_that) {
case _TypeDefenseEntity() when $default != null:
return $default(_that.name,_that.multiplier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeDefenseEntity implements TypeDefenseEntity {
  const _TypeDefenseEntity({@JsonKey(name: 'name') this.name, @JsonKey(name: 'multiplier') this.multiplier});
  factory _TypeDefenseEntity.fromJson(Map<String, dynamic> json) => _$TypeDefenseEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'multiplier') final  double? multiplier;

/// Create a copy of TypeDefenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDefenseEntityCopyWith<_TypeDefenseEntity> get copyWith => __$TypeDefenseEntityCopyWithImpl<_TypeDefenseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDefenseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDefenseEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.multiplier, multiplier) || other.multiplier == multiplier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,multiplier);

@override
String toString() {
  return 'TypeDefenseEntity(name: $name, multiplier: $multiplier)';
}


}

/// @nodoc
abstract mixin class _$TypeDefenseEntityCopyWith<$Res> implements $TypeDefenseEntityCopyWith<$Res> {
  factory _$TypeDefenseEntityCopyWith(_TypeDefenseEntity value, $Res Function(_TypeDefenseEntity) _then) = __$TypeDefenseEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'multiplier') double? multiplier
});




}
/// @nodoc
class __$TypeDefenseEntityCopyWithImpl<$Res>
    implements _$TypeDefenseEntityCopyWith<$Res> {
  __$TypeDefenseEntityCopyWithImpl(this._self, this._then);

  final _TypeDefenseEntity _self;
  final $Res Function(_TypeDefenseEntity) _then;

/// Create a copy of TypeDefenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? multiplier = freezed,}) {
  return _then(_TypeDefenseEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,multiplier: freezed == multiplier ? _self.multiplier : multiplier // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
