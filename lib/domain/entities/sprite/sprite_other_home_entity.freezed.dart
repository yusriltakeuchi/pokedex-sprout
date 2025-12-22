// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprite_other_home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpriteOtherHomeEntity {

@JsonKey(name: 'front_default') String? get frontDefault;@JsonKey(name: 'front_female') String? get frontFemale;@JsonKey(name: 'front_shiny') String? get frontShiny;@JsonKey(name: 'front_shiny_female') String? get frontShinyFemale;
/// Create a copy of SpriteOtherHomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpriteOtherHomeEntityCopyWith<SpriteOtherHomeEntity> get copyWith => _$SpriteOtherHomeEntityCopyWithImpl<SpriteOtherHomeEntity>(this as SpriteOtherHomeEntity, _$identity);

  /// Serializes this SpriteOtherHomeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpriteOtherHomeEntity&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontFemale,frontShiny,frontShinyFemale);

@override
String toString() {
  return 'SpriteOtherHomeEntity(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class $SpriteOtherHomeEntityCopyWith<$Res>  {
  factory $SpriteOtherHomeEntityCopyWith(SpriteOtherHomeEntity value, $Res Function(SpriteOtherHomeEntity) _then) = _$SpriteOtherHomeEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault,@JsonKey(name: 'front_female') String? frontFemale,@JsonKey(name: 'front_shiny') String? frontShiny,@JsonKey(name: 'front_shiny_female') String? frontShinyFemale
});




}
/// @nodoc
class _$SpriteOtherHomeEntityCopyWithImpl<$Res>
    implements $SpriteOtherHomeEntityCopyWith<$Res> {
  _$SpriteOtherHomeEntityCopyWithImpl(this._self, this._then);

  final SpriteOtherHomeEntity _self;
  final $Res Function(SpriteOtherHomeEntity) _then;

/// Create a copy of SpriteOtherHomeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpriteOtherHomeEntity].
extension SpriteOtherHomeEntityPatterns on SpriteOtherHomeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpriteOtherHomeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpriteOtherHomeEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpriteOtherHomeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'front_female')  String? frontFemale, @JsonKey(name: 'front_shiny')  String? frontShiny, @JsonKey(name: 'front_shiny_female')  String? frontShinyFemale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'front_female')  String? frontFemale, @JsonKey(name: 'front_shiny')  String? frontShiny, @JsonKey(name: 'front_shiny_female')  String? frontShinyFemale)  $default,) {final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity():
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'front_female')  String? frontFemale, @JsonKey(name: 'front_shiny')  String? frontShiny, @JsonKey(name: 'front_shiny_female')  String? frontShinyFemale)?  $default,) {final _that = this;
switch (_that) {
case _SpriteOtherHomeEntity() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpriteOtherHomeEntity implements SpriteOtherHomeEntity {
  const _SpriteOtherHomeEntity({@JsonKey(name: 'front_default') this.frontDefault, @JsonKey(name: 'front_female') this.frontFemale, @JsonKey(name: 'front_shiny') this.frontShiny, @JsonKey(name: 'front_shiny_female') this.frontShinyFemale});
  factory _SpriteOtherHomeEntity.fromJson(Map<String, dynamic> json) => _$SpriteOtherHomeEntityFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;
@override@JsonKey(name: 'front_female') final  String? frontFemale;
@override@JsonKey(name: 'front_shiny') final  String? frontShiny;
@override@JsonKey(name: 'front_shiny_female') final  String? frontShinyFemale;

/// Create a copy of SpriteOtherHomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpriteOtherHomeEntityCopyWith<_SpriteOtherHomeEntity> get copyWith => __$SpriteOtherHomeEntityCopyWithImpl<_SpriteOtherHomeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpriteOtherHomeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpriteOtherHomeEntity&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontFemale,frontShiny,frontShinyFemale);

@override
String toString() {
  return 'SpriteOtherHomeEntity(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class _$SpriteOtherHomeEntityCopyWith<$Res> implements $SpriteOtherHomeEntityCopyWith<$Res> {
  factory _$SpriteOtherHomeEntityCopyWith(_SpriteOtherHomeEntity value, $Res Function(_SpriteOtherHomeEntity) _then) = __$SpriteOtherHomeEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault,@JsonKey(name: 'front_female') String? frontFemale,@JsonKey(name: 'front_shiny') String? frontShiny,@JsonKey(name: 'front_shiny_female') String? frontShinyFemale
});




}
/// @nodoc
class __$SpriteOtherHomeEntityCopyWithImpl<$Res>
    implements _$SpriteOtherHomeEntityCopyWith<$Res> {
  __$SpriteOtherHomeEntityCopyWithImpl(this._self, this._then);

  final _SpriteOtherHomeEntity _self;
  final $Res Function(_SpriteOtherHomeEntity) _then;

/// Create a copy of SpriteOtherHomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_SpriteOtherHomeEntity(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
