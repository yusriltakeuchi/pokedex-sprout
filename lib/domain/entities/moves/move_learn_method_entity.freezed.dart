// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_learn_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveLearnMethodEntity {

@JsonKey(name: 'name') String? get name;
/// Create a copy of MoveLearnMethodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveLearnMethodEntityCopyWith<MoveLearnMethodEntity> get copyWith => _$MoveLearnMethodEntityCopyWithImpl<MoveLearnMethodEntity>(this as MoveLearnMethodEntity, _$identity);

  /// Serializes this MoveLearnMethodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveLearnMethodEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoveLearnMethodEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $MoveLearnMethodEntityCopyWith<$Res>  {
  factory $MoveLearnMethodEntityCopyWith(MoveLearnMethodEntity value, $Res Function(MoveLearnMethodEntity) _then) = _$MoveLearnMethodEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$MoveLearnMethodEntityCopyWithImpl<$Res>
    implements $MoveLearnMethodEntityCopyWith<$Res> {
  _$MoveLearnMethodEntityCopyWithImpl(this._self, this._then);

  final MoveLearnMethodEntity _self;
  final $Res Function(MoveLearnMethodEntity) _then;

/// Create a copy of MoveLearnMethodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoveLearnMethodEntity].
extension MoveLearnMethodEntityPatterns on MoveLearnMethodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveLearnMethodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveLearnMethodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveLearnMethodEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveLearnMethodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveLearnMethodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveLearnMethodEntity() when $default != null:
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
case _MoveLearnMethodEntity() when $default != null:
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
case _MoveLearnMethodEntity():
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
case _MoveLearnMethodEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveLearnMethodEntity implements MoveLearnMethodEntity {
  const _MoveLearnMethodEntity({@JsonKey(name: 'name') this.name});
  factory _MoveLearnMethodEntity.fromJson(Map<String, dynamic> json) => _$MoveLearnMethodEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of MoveLearnMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveLearnMethodEntityCopyWith<_MoveLearnMethodEntity> get copyWith => __$MoveLearnMethodEntityCopyWithImpl<_MoveLearnMethodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveLearnMethodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveLearnMethodEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoveLearnMethodEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$MoveLearnMethodEntityCopyWith<$Res> implements $MoveLearnMethodEntityCopyWith<$Res> {
  factory _$MoveLearnMethodEntityCopyWith(_MoveLearnMethodEntity value, $Res Function(_MoveLearnMethodEntity) _then) = __$MoveLearnMethodEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$MoveLearnMethodEntityCopyWithImpl<$Res>
    implements _$MoveLearnMethodEntityCopyWith<$Res> {
  __$MoveLearnMethodEntityCopyWithImpl(this._self, this._then);

  final _MoveLearnMethodEntity _self;
  final $Res Function(_MoveLearnMethodEntity) _then;

/// Create a copy of MoveLearnMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_MoveLearnMethodEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
