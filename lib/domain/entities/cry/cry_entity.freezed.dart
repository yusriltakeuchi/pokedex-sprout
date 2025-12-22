// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cry_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryEntity {

@JsonKey(name: 'latest') String? get latest;@JsonKey(name: 'legacy') String? get legacy;
/// Create a copy of CryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryEntityCopyWith<CryEntity> get copyWith => _$CryEntityCopyWithImpl<CryEntity>(this as CryEntity, _$identity);

  /// Serializes this CryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryEntity&&(identical(other.latest, latest) || other.latest == latest)&&(identical(other.legacy, legacy) || other.legacy == legacy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latest,legacy);

@override
String toString() {
  return 'CryEntity(latest: $latest, legacy: $legacy)';
}


}

/// @nodoc
abstract mixin class $CryEntityCopyWith<$Res>  {
  factory $CryEntityCopyWith(CryEntity value, $Res Function(CryEntity) _then) = _$CryEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'latest') String? latest,@JsonKey(name: 'legacy') String? legacy
});




}
/// @nodoc
class _$CryEntityCopyWithImpl<$Res>
    implements $CryEntityCopyWith<$Res> {
  _$CryEntityCopyWithImpl(this._self, this._then);

  final CryEntity _self;
  final $Res Function(CryEntity) _then;

/// Create a copy of CryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latest = freezed,Object? legacy = freezed,}) {
  return _then(_self.copyWith(
latest: freezed == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as String?,legacy: freezed == legacy ? _self.legacy : legacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CryEntity].
extension CryEntityPatterns on CryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'latest')  String? latest, @JsonKey(name: 'legacy')  String? legacy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryEntity() when $default != null:
return $default(_that.latest,_that.legacy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'latest')  String? latest, @JsonKey(name: 'legacy')  String? legacy)  $default,) {final _that = this;
switch (_that) {
case _CryEntity():
return $default(_that.latest,_that.legacy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'latest')  String? latest, @JsonKey(name: 'legacy')  String? legacy)?  $default,) {final _that = this;
switch (_that) {
case _CryEntity() when $default != null:
return $default(_that.latest,_that.legacy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryEntity implements CryEntity {
  const _CryEntity({@JsonKey(name: 'latest') this.latest, @JsonKey(name: 'legacy') this.legacy});
  factory _CryEntity.fromJson(Map<String, dynamic> json) => _$CryEntityFromJson(json);

@override@JsonKey(name: 'latest') final  String? latest;
@override@JsonKey(name: 'legacy') final  String? legacy;

/// Create a copy of CryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryEntityCopyWith<_CryEntity> get copyWith => __$CryEntityCopyWithImpl<_CryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryEntity&&(identical(other.latest, latest) || other.latest == latest)&&(identical(other.legacy, legacy) || other.legacy == legacy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latest,legacy);

@override
String toString() {
  return 'CryEntity(latest: $latest, legacy: $legacy)';
}


}

/// @nodoc
abstract mixin class _$CryEntityCopyWith<$Res> implements $CryEntityCopyWith<$Res> {
  factory _$CryEntityCopyWith(_CryEntity value, $Res Function(_CryEntity) _then) = __$CryEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'latest') String? latest,@JsonKey(name: 'legacy') String? legacy
});




}
/// @nodoc
class __$CryEntityCopyWithImpl<$Res>
    implements _$CryEntityCopyWith<$Res> {
  __$CryEntityCopyWithImpl(this._self, this._then);

  final _CryEntity _self;
  final $Res Function(_CryEntity) _then;

/// Create a copy of CryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latest = freezed,Object? legacy = freezed,}) {
  return _then(_CryEntity(
latest: freezed == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as String?,legacy: freezed == legacy ? _self.legacy : legacy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
