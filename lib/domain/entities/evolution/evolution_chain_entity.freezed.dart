// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionChainEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'chain') EvolutionEntity? get chain;
/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<EvolutionChainEntity> get copyWith => _$EvolutionChainEntityCopyWithImpl<EvolutionChainEntity>(this as EvolutionChainEntity, _$identity);

  /// Serializes this EvolutionChainEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.chain, chain) || other.chain == chain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,chain);

@override
String toString() {
  return 'EvolutionChainEntity(id: $id, url: $url, chain: $chain)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainEntityCopyWith<$Res>  {
  factory $EvolutionChainEntityCopyWith(EvolutionChainEntity value, $Res Function(EvolutionChainEntity) _then) = _$EvolutionChainEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'url') String? url,@JsonKey(name: 'chain') EvolutionEntity? chain
});


$EvolutionEntityCopyWith<$Res>? get chain;

}
/// @nodoc
class _$EvolutionChainEntityCopyWithImpl<$Res>
    implements $EvolutionChainEntityCopyWith<$Res> {
  _$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final EvolutionChainEntity _self;
  final $Res Function(EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? url = freezed,Object? chain = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,chain: freezed == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as EvolutionEntity?,
  ));
}
/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionEntityCopyWith<$Res>? get chain {
    if (_self.chain == null) {
    return null;
  }

  return $EvolutionEntityCopyWith<$Res>(_self.chain!, (value) {
    return _then(_self.copyWith(chain: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionChainEntity].
extension EvolutionChainEntityPatterns on EvolutionChainEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionChainEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionChainEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionChainEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'chain')  EvolutionEntity? chain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.id,_that.url,_that.chain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'chain')  EvolutionEntity? chain)  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity():
return $default(_that.id,_that.url,_that.chain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'chain')  EvolutionEntity? chain)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.id,_that.url,_that.chain);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionChainEntity implements EvolutionChainEntity {
  const _EvolutionChainEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'url') this.url, @JsonKey(name: 'chain') this.chain});
  factory _EvolutionChainEntity.fromJson(Map<String, dynamic> json) => _$EvolutionChainEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'chain') final  EvolutionEntity? chain;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainEntityCopyWith<_EvolutionChainEntity> get copyWith => __$EvolutionChainEntityCopyWithImpl<_EvolutionChainEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionChainEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.chain, chain) || other.chain == chain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,chain);

@override
String toString() {
  return 'EvolutionChainEntity(id: $id, url: $url, chain: $chain)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainEntityCopyWith<$Res> implements $EvolutionChainEntityCopyWith<$Res> {
  factory _$EvolutionChainEntityCopyWith(_EvolutionChainEntity value, $Res Function(_EvolutionChainEntity) _then) = __$EvolutionChainEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'url') String? url,@JsonKey(name: 'chain') EvolutionEntity? chain
});


@override $EvolutionEntityCopyWith<$Res>? get chain;

}
/// @nodoc
class __$EvolutionChainEntityCopyWithImpl<$Res>
    implements _$EvolutionChainEntityCopyWith<$Res> {
  __$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final _EvolutionChainEntity _self;
  final $Res Function(_EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? url = freezed,Object? chain = freezed,}) {
  return _then(_EvolutionChainEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,chain: freezed == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as EvolutionEntity?,
  ));
}

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionEntityCopyWith<$Res>? get chain {
    if (_self.chain == null) {
    return null;
  }

  return $EvolutionEntityCopyWith<$Res>(_self.chain!, (value) {
    return _then(_self.copyWith(chain: value));
  });
}
}

// dart format on
