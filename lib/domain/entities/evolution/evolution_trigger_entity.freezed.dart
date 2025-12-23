// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_trigger_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionTriggerEntity {

@JsonKey(name: 'name') String? get name;
/// Create a copy of EvolutionTriggerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionTriggerEntityCopyWith<EvolutionTriggerEntity> get copyWith => _$EvolutionTriggerEntityCopyWithImpl<EvolutionTriggerEntity>(this as EvolutionTriggerEntity, _$identity);

  /// Serializes this EvolutionTriggerEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionTriggerEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'EvolutionTriggerEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $EvolutionTriggerEntityCopyWith<$Res>  {
  factory $EvolutionTriggerEntityCopyWith(EvolutionTriggerEntity value, $Res Function(EvolutionTriggerEntity) _then) = _$EvolutionTriggerEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$EvolutionTriggerEntityCopyWithImpl<$Res>
    implements $EvolutionTriggerEntityCopyWith<$Res> {
  _$EvolutionTriggerEntityCopyWithImpl(this._self, this._then);

  final EvolutionTriggerEntity _self;
  final $Res Function(EvolutionTriggerEntity) _then;

/// Create a copy of EvolutionTriggerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EvolutionTriggerEntity].
extension EvolutionTriggerEntityPatterns on EvolutionTriggerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionTriggerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionTriggerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionTriggerEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionTriggerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionTriggerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionTriggerEntity() when $default != null:
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
case _EvolutionTriggerEntity() when $default != null:
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
case _EvolutionTriggerEntity():
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
case _EvolutionTriggerEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionTriggerEntity implements EvolutionTriggerEntity {
  const _EvolutionTriggerEntity({@JsonKey(name: 'name') this.name});
  factory _EvolutionTriggerEntity.fromJson(Map<String, dynamic> json) => _$EvolutionTriggerEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of EvolutionTriggerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionTriggerEntityCopyWith<_EvolutionTriggerEntity> get copyWith => __$EvolutionTriggerEntityCopyWithImpl<_EvolutionTriggerEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionTriggerEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionTriggerEntity&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'EvolutionTriggerEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$EvolutionTriggerEntityCopyWith<$Res> implements $EvolutionTriggerEntityCopyWith<$Res> {
  factory _$EvolutionTriggerEntityCopyWith(_EvolutionTriggerEntity value, $Res Function(_EvolutionTriggerEntity) _then) = __$EvolutionTriggerEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$EvolutionTriggerEntityCopyWithImpl<$Res>
    implements _$EvolutionTriggerEntityCopyWith<$Res> {
  __$EvolutionTriggerEntityCopyWithImpl(this._self, this._then);

  final _EvolutionTriggerEntity _self;
  final $Res Function(_EvolutionTriggerEntity) _then;

/// Create a copy of EvolutionTriggerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_EvolutionTriggerEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
