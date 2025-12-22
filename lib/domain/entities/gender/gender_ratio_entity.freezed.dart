// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_ratio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenderRatioEntity {

@JsonKey(name: 'male') double? get male;@JsonKey(name: 'female') double? get female;@JsonKey(name: 'genderless') bool? get genderless;
/// Create a copy of GenderRatioEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderRatioEntityCopyWith<GenderRatioEntity> get copyWith => _$GenderRatioEntityCopyWithImpl<GenderRatioEntity>(this as GenderRatioEntity, _$identity);

  /// Serializes this GenderRatioEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderRatioEntity&&(identical(other.male, male) || other.male == male)&&(identical(other.female, female) || other.female == female)&&(identical(other.genderless, genderless) || other.genderless == genderless));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,male,female,genderless);

@override
String toString() {
  return 'GenderRatioEntity(male: $male, female: $female, genderless: $genderless)';
}


}

/// @nodoc
abstract mixin class $GenderRatioEntityCopyWith<$Res>  {
  factory $GenderRatioEntityCopyWith(GenderRatioEntity value, $Res Function(GenderRatioEntity) _then) = _$GenderRatioEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'male') double? male,@JsonKey(name: 'female') double? female,@JsonKey(name: 'genderless') bool? genderless
});




}
/// @nodoc
class _$GenderRatioEntityCopyWithImpl<$Res>
    implements $GenderRatioEntityCopyWith<$Res> {
  _$GenderRatioEntityCopyWithImpl(this._self, this._then);

  final GenderRatioEntity _self;
  final $Res Function(GenderRatioEntity) _then;

/// Create a copy of GenderRatioEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? male = freezed,Object? female = freezed,Object? genderless = freezed,}) {
  return _then(_self.copyWith(
male: freezed == male ? _self.male : male // ignore: cast_nullable_to_non_nullable
as double?,female: freezed == female ? _self.female : female // ignore: cast_nullable_to_non_nullable
as double?,genderless: freezed == genderless ? _self.genderless : genderless // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [GenderRatioEntity].
extension GenderRatioEntityPatterns on GenderRatioEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenderRatioEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenderRatioEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenderRatioEntity value)  $default,){
final _that = this;
switch (_that) {
case _GenderRatioEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenderRatioEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GenderRatioEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'male')  double? male, @JsonKey(name: 'female')  double? female, @JsonKey(name: 'genderless')  bool? genderless)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenderRatioEntity() when $default != null:
return $default(_that.male,_that.female,_that.genderless);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'male')  double? male, @JsonKey(name: 'female')  double? female, @JsonKey(name: 'genderless')  bool? genderless)  $default,) {final _that = this;
switch (_that) {
case _GenderRatioEntity():
return $default(_that.male,_that.female,_that.genderless);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'male')  double? male, @JsonKey(name: 'female')  double? female, @JsonKey(name: 'genderless')  bool? genderless)?  $default,) {final _that = this;
switch (_that) {
case _GenderRatioEntity() when $default != null:
return $default(_that.male,_that.female,_that.genderless);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenderRatioEntity implements GenderRatioEntity {
  const _GenderRatioEntity({@JsonKey(name: 'male') this.male, @JsonKey(name: 'female') this.female, @JsonKey(name: 'genderless') this.genderless});
  factory _GenderRatioEntity.fromJson(Map<String, dynamic> json) => _$GenderRatioEntityFromJson(json);

@override@JsonKey(name: 'male') final  double? male;
@override@JsonKey(name: 'female') final  double? female;
@override@JsonKey(name: 'genderless') final  bool? genderless;

/// Create a copy of GenderRatioEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenderRatioEntityCopyWith<_GenderRatioEntity> get copyWith => __$GenderRatioEntityCopyWithImpl<_GenderRatioEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenderRatioEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenderRatioEntity&&(identical(other.male, male) || other.male == male)&&(identical(other.female, female) || other.female == female)&&(identical(other.genderless, genderless) || other.genderless == genderless));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,male,female,genderless);

@override
String toString() {
  return 'GenderRatioEntity(male: $male, female: $female, genderless: $genderless)';
}


}

/// @nodoc
abstract mixin class _$GenderRatioEntityCopyWith<$Res> implements $GenderRatioEntityCopyWith<$Res> {
  factory _$GenderRatioEntityCopyWith(_GenderRatioEntity value, $Res Function(_GenderRatioEntity) _then) = __$GenderRatioEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'male') double? male,@JsonKey(name: 'female') double? female,@JsonKey(name: 'genderless') bool? genderless
});




}
/// @nodoc
class __$GenderRatioEntityCopyWithImpl<$Res>
    implements _$GenderRatioEntityCopyWith<$Res> {
  __$GenderRatioEntityCopyWithImpl(this._self, this._then);

  final _GenderRatioEntity _self;
  final $Res Function(_GenderRatioEntity) _then;

/// Create a copy of GenderRatioEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? male = freezed,Object? female = freezed,Object? genderless = freezed,}) {
  return _then(_GenderRatioEntity(
male: freezed == male ? _self.male : male // ignore: cast_nullable_to_non_nullable
as double?,female: freezed == female ? _self.female : female // ignore: cast_nullable_to_non_nullable
as double?,genderless: freezed == genderless ? _self.genderless : genderless // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
