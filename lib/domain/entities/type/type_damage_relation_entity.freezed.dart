// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_damage_relation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeDamageRelationEntity {

@JsonKey(name: 'no_damage_to') List<TypeEntity>? get noDamageTo;@JsonKey(name: 'half_damage_to') List<TypeEntity>? get halfDamageTo;@JsonKey(name: 'double_damage_to') List<TypeEntity>? get doubleDamageTo;@JsonKey(name: 'no_damage_from') List<TypeEntity>? get noDamageFrom;@JsonKey(name: 'half_damage_from') List<TypeEntity>? get halfDamageFrom;@JsonKey(name: 'double_damage_from') List<TypeEntity>? get doubleDamageFrom;
/// Create a copy of TypeDamageRelationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDamageRelationEntityCopyWith<TypeDamageRelationEntity> get copyWith => _$TypeDamageRelationEntityCopyWithImpl<TypeDamageRelationEntity>(this as TypeDamageRelationEntity, _$identity);

  /// Serializes this TypeDamageRelationEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDamageRelationEntity&&const DeepCollectionEquality().equals(other.noDamageTo, noDamageTo)&&const DeepCollectionEquality().equals(other.halfDamageTo, halfDamageTo)&&const DeepCollectionEquality().equals(other.doubleDamageTo, doubleDamageTo)&&const DeepCollectionEquality().equals(other.noDamageFrom, noDamageFrom)&&const DeepCollectionEquality().equals(other.halfDamageFrom, halfDamageFrom)&&const DeepCollectionEquality().equals(other.doubleDamageFrom, doubleDamageFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(noDamageTo),const DeepCollectionEquality().hash(halfDamageTo),const DeepCollectionEquality().hash(doubleDamageTo),const DeepCollectionEquality().hash(noDamageFrom),const DeepCollectionEquality().hash(halfDamageFrom),const DeepCollectionEquality().hash(doubleDamageFrom));

@override
String toString() {
  return 'TypeDamageRelationEntity(noDamageTo: $noDamageTo, halfDamageTo: $halfDamageTo, doubleDamageTo: $doubleDamageTo, noDamageFrom: $noDamageFrom, halfDamageFrom: $halfDamageFrom, doubleDamageFrom: $doubleDamageFrom)';
}


}

/// @nodoc
abstract mixin class $TypeDamageRelationEntityCopyWith<$Res>  {
  factory $TypeDamageRelationEntityCopyWith(TypeDamageRelationEntity value, $Res Function(TypeDamageRelationEntity) _then) = _$TypeDamageRelationEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'no_damage_to') List<TypeEntity>? noDamageTo,@JsonKey(name: 'half_damage_to') List<TypeEntity>? halfDamageTo,@JsonKey(name: 'double_damage_to') List<TypeEntity>? doubleDamageTo,@JsonKey(name: 'no_damage_from') List<TypeEntity>? noDamageFrom,@JsonKey(name: 'half_damage_from') List<TypeEntity>? halfDamageFrom,@JsonKey(name: 'double_damage_from') List<TypeEntity>? doubleDamageFrom
});




}
/// @nodoc
class _$TypeDamageRelationEntityCopyWithImpl<$Res>
    implements $TypeDamageRelationEntityCopyWith<$Res> {
  _$TypeDamageRelationEntityCopyWithImpl(this._self, this._then);

  final TypeDamageRelationEntity _self;
  final $Res Function(TypeDamageRelationEntity) _then;

/// Create a copy of TypeDamageRelationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noDamageTo = freezed,Object? halfDamageTo = freezed,Object? doubleDamageTo = freezed,Object? noDamageFrom = freezed,Object? halfDamageFrom = freezed,Object? doubleDamageFrom = freezed,}) {
  return _then(_self.copyWith(
noDamageTo: freezed == noDamageTo ? _self.noDamageTo : noDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,halfDamageTo: freezed == halfDamageTo ? _self.halfDamageTo : halfDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,doubleDamageTo: freezed == doubleDamageTo ? _self.doubleDamageTo : doubleDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,noDamageFrom: freezed == noDamageFrom ? _self.noDamageFrom : noDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,halfDamageFrom: freezed == halfDamageFrom ? _self.halfDamageFrom : halfDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,doubleDamageFrom: freezed == doubleDamageFrom ? _self.doubleDamageFrom : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeDamageRelationEntity].
extension TypeDamageRelationEntityPatterns on TypeDamageRelationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeDamageRelationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeDamageRelationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeDamageRelationEntity value)  $default,){
final _that = this;
switch (_that) {
case _TypeDamageRelationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeDamageRelationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TypeDamageRelationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'no_damage_to')  List<TypeEntity>? noDamageTo, @JsonKey(name: 'half_damage_to')  List<TypeEntity>? halfDamageTo, @JsonKey(name: 'double_damage_to')  List<TypeEntity>? doubleDamageTo, @JsonKey(name: 'no_damage_from')  List<TypeEntity>? noDamageFrom, @JsonKey(name: 'half_damage_from')  List<TypeEntity>? halfDamageFrom, @JsonKey(name: 'double_damage_from')  List<TypeEntity>? doubleDamageFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeDamageRelationEntity() when $default != null:
return $default(_that.noDamageTo,_that.halfDamageTo,_that.doubleDamageTo,_that.noDamageFrom,_that.halfDamageFrom,_that.doubleDamageFrom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'no_damage_to')  List<TypeEntity>? noDamageTo, @JsonKey(name: 'half_damage_to')  List<TypeEntity>? halfDamageTo, @JsonKey(name: 'double_damage_to')  List<TypeEntity>? doubleDamageTo, @JsonKey(name: 'no_damage_from')  List<TypeEntity>? noDamageFrom, @JsonKey(name: 'half_damage_from')  List<TypeEntity>? halfDamageFrom, @JsonKey(name: 'double_damage_from')  List<TypeEntity>? doubleDamageFrom)  $default,) {final _that = this;
switch (_that) {
case _TypeDamageRelationEntity():
return $default(_that.noDamageTo,_that.halfDamageTo,_that.doubleDamageTo,_that.noDamageFrom,_that.halfDamageFrom,_that.doubleDamageFrom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'no_damage_to')  List<TypeEntity>? noDamageTo, @JsonKey(name: 'half_damage_to')  List<TypeEntity>? halfDamageTo, @JsonKey(name: 'double_damage_to')  List<TypeEntity>? doubleDamageTo, @JsonKey(name: 'no_damage_from')  List<TypeEntity>? noDamageFrom, @JsonKey(name: 'half_damage_from')  List<TypeEntity>? halfDamageFrom, @JsonKey(name: 'double_damage_from')  List<TypeEntity>? doubleDamageFrom)?  $default,) {final _that = this;
switch (_that) {
case _TypeDamageRelationEntity() when $default != null:
return $default(_that.noDamageTo,_that.halfDamageTo,_that.doubleDamageTo,_that.noDamageFrom,_that.halfDamageFrom,_that.doubleDamageFrom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeDamageRelationEntity implements TypeDamageRelationEntity {
  const _TypeDamageRelationEntity({@JsonKey(name: 'no_damage_to') final  List<TypeEntity>? noDamageTo, @JsonKey(name: 'half_damage_to') final  List<TypeEntity>? halfDamageTo, @JsonKey(name: 'double_damage_to') final  List<TypeEntity>? doubleDamageTo, @JsonKey(name: 'no_damage_from') final  List<TypeEntity>? noDamageFrom, @JsonKey(name: 'half_damage_from') final  List<TypeEntity>? halfDamageFrom, @JsonKey(name: 'double_damage_from') final  List<TypeEntity>? doubleDamageFrom}): _noDamageTo = noDamageTo,_halfDamageTo = halfDamageTo,_doubleDamageTo = doubleDamageTo,_noDamageFrom = noDamageFrom,_halfDamageFrom = halfDamageFrom,_doubleDamageFrom = doubleDamageFrom;
  factory _TypeDamageRelationEntity.fromJson(Map<String, dynamic> json) => _$TypeDamageRelationEntityFromJson(json);

 final  List<TypeEntity>? _noDamageTo;
@override@JsonKey(name: 'no_damage_to') List<TypeEntity>? get noDamageTo {
  final value = _noDamageTo;
  if (value == null) return null;
  if (_noDamageTo is EqualUnmodifiableListView) return _noDamageTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _halfDamageTo;
@override@JsonKey(name: 'half_damage_to') List<TypeEntity>? get halfDamageTo {
  final value = _halfDamageTo;
  if (value == null) return null;
  if (_halfDamageTo is EqualUnmodifiableListView) return _halfDamageTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _doubleDamageTo;
@override@JsonKey(name: 'double_damage_to') List<TypeEntity>? get doubleDamageTo {
  final value = _doubleDamageTo;
  if (value == null) return null;
  if (_doubleDamageTo is EqualUnmodifiableListView) return _doubleDamageTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _noDamageFrom;
@override@JsonKey(name: 'no_damage_from') List<TypeEntity>? get noDamageFrom {
  final value = _noDamageFrom;
  if (value == null) return null;
  if (_noDamageFrom is EqualUnmodifiableListView) return _noDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _halfDamageFrom;
@override@JsonKey(name: 'half_damage_from') List<TypeEntity>? get halfDamageFrom {
  final value = _halfDamageFrom;
  if (value == null) return null;
  if (_halfDamageFrom is EqualUnmodifiableListView) return _halfDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _doubleDamageFrom;
@override@JsonKey(name: 'double_damage_from') List<TypeEntity>? get doubleDamageFrom {
  final value = _doubleDamageFrom;
  if (value == null) return null;
  if (_doubleDamageFrom is EqualUnmodifiableListView) return _doubleDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TypeDamageRelationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDamageRelationEntityCopyWith<_TypeDamageRelationEntity> get copyWith => __$TypeDamageRelationEntityCopyWithImpl<_TypeDamageRelationEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDamageRelationEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDamageRelationEntity&&const DeepCollectionEquality().equals(other._noDamageTo, _noDamageTo)&&const DeepCollectionEquality().equals(other._halfDamageTo, _halfDamageTo)&&const DeepCollectionEquality().equals(other._doubleDamageTo, _doubleDamageTo)&&const DeepCollectionEquality().equals(other._noDamageFrom, _noDamageFrom)&&const DeepCollectionEquality().equals(other._halfDamageFrom, _halfDamageFrom)&&const DeepCollectionEquality().equals(other._doubleDamageFrom, _doubleDamageFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_noDamageTo),const DeepCollectionEquality().hash(_halfDamageTo),const DeepCollectionEquality().hash(_doubleDamageTo),const DeepCollectionEquality().hash(_noDamageFrom),const DeepCollectionEquality().hash(_halfDamageFrom),const DeepCollectionEquality().hash(_doubleDamageFrom));

@override
String toString() {
  return 'TypeDamageRelationEntity(noDamageTo: $noDamageTo, halfDamageTo: $halfDamageTo, doubleDamageTo: $doubleDamageTo, noDamageFrom: $noDamageFrom, halfDamageFrom: $halfDamageFrom, doubleDamageFrom: $doubleDamageFrom)';
}


}

/// @nodoc
abstract mixin class _$TypeDamageRelationEntityCopyWith<$Res> implements $TypeDamageRelationEntityCopyWith<$Res> {
  factory _$TypeDamageRelationEntityCopyWith(_TypeDamageRelationEntity value, $Res Function(_TypeDamageRelationEntity) _then) = __$TypeDamageRelationEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'no_damage_to') List<TypeEntity>? noDamageTo,@JsonKey(name: 'half_damage_to') List<TypeEntity>? halfDamageTo,@JsonKey(name: 'double_damage_to') List<TypeEntity>? doubleDamageTo,@JsonKey(name: 'no_damage_from') List<TypeEntity>? noDamageFrom,@JsonKey(name: 'half_damage_from') List<TypeEntity>? halfDamageFrom,@JsonKey(name: 'double_damage_from') List<TypeEntity>? doubleDamageFrom
});




}
/// @nodoc
class __$TypeDamageRelationEntityCopyWithImpl<$Res>
    implements _$TypeDamageRelationEntityCopyWith<$Res> {
  __$TypeDamageRelationEntityCopyWithImpl(this._self, this._then);

  final _TypeDamageRelationEntity _self;
  final $Res Function(_TypeDamageRelationEntity) _then;

/// Create a copy of TypeDamageRelationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noDamageTo = freezed,Object? halfDamageTo = freezed,Object? doubleDamageTo = freezed,Object? noDamageFrom = freezed,Object? halfDamageFrom = freezed,Object? doubleDamageFrom = freezed,}) {
  return _then(_TypeDamageRelationEntity(
noDamageTo: freezed == noDamageTo ? _self._noDamageTo : noDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,halfDamageTo: freezed == halfDamageTo ? _self._halfDamageTo : halfDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,doubleDamageTo: freezed == doubleDamageTo ? _self._doubleDamageTo : doubleDamageTo // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,noDamageFrom: freezed == noDamageFrom ? _self._noDamageFrom : noDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,halfDamageFrom: freezed == halfDamageFrom ? _self._halfDamageFrom : halfDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,doubleDamageFrom: freezed == doubleDamageFrom ? _self._doubleDamageFrom : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,
  ));
}


}

// dart format on
