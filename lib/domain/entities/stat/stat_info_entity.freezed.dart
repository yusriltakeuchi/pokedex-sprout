// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatInfoEntity {

@JsonKey(name: 'name') String? get name;
/// Create a copy of StatInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatInfoEntityCopyWith<StatInfoEntity> get copyWith => _$StatInfoEntityCopyWithImpl<StatInfoEntity>(this as StatInfoEntity, _$identity);

  /// Serializes this StatInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatInfoEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'StatInfoEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $StatInfoEntityCopyWith<$Res>  {
  factory $StatInfoEntityCopyWith(StatInfoEntity value, $Res Function(StatInfoEntity) _then) = _$StatInfoEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$StatInfoEntityCopyWithImpl<$Res>
    implements $StatInfoEntityCopyWith<$Res> {
  _$StatInfoEntityCopyWithImpl(this._self, this._then);

  final StatInfoEntity _self;
  final $Res Function(StatInfoEntity) _then;

/// Create a copy of StatInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatInfoEntity].
extension StatInfoEntityPatterns on StatInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _StatInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StatInfoEntity() when $default != null:
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
case _StatInfoEntity() when $default != null:
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
case _StatInfoEntity():
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
case _StatInfoEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatInfoEntity implements StatInfoEntity {
  const _StatInfoEntity({@JsonKey(name: 'name') this.name});
  factory _StatInfoEntity.fromJson(Map<String, dynamic> json) => _$StatInfoEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of StatInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatInfoEntityCopyWith<_StatInfoEntity> get copyWith => __$StatInfoEntityCopyWithImpl<_StatInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatInfoEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'StatInfoEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$StatInfoEntityCopyWith<$Res> implements $StatInfoEntityCopyWith<$Res> {
  factory _$StatInfoEntityCopyWith(_StatInfoEntity value, $Res Function(_StatInfoEntity) _then) = __$StatInfoEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$StatInfoEntityCopyWithImpl<$Res>
    implements _$StatInfoEntityCopyWith<$Res> {
  __$StatInfoEntityCopyWithImpl(this._self, this._then);

  final _StatInfoEntity _self;
  final $Res Function(_StatInfoEntity) _then;

/// Create a copy of StatInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_StatInfoEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
