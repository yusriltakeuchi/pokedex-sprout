// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machine_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MachineEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'item') ItemEntity? get item;
/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MachineEntityCopyWith<MachineEntity> get copyWith => _$MachineEntityCopyWithImpl<MachineEntity>(this as MachineEntity, _$identity);

  /// Serializes this MachineEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MachineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,item);

@override
String toString() {
  return 'MachineEntity(id: $id, url: $url, item: $item)';
}


}

/// @nodoc
abstract mixin class $MachineEntityCopyWith<$Res>  {
  factory $MachineEntityCopyWith(MachineEntity value, $Res Function(MachineEntity) _then) = _$MachineEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'url') String? url,@JsonKey(name: 'item') ItemEntity? item
});


$ItemEntityCopyWith<$Res>? get item;

}
/// @nodoc
class _$MachineEntityCopyWithImpl<$Res>
    implements $MachineEntityCopyWith<$Res> {
  _$MachineEntityCopyWithImpl(this._self, this._then);

  final MachineEntity _self;
  final $Res Function(MachineEntity) _then;

/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? url = freezed,Object? item = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemEntity?,
  ));
}
/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemEntityCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemEntityCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [MachineEntity].
extension MachineEntityPatterns on MachineEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MachineEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MachineEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MachineEntity value)  $default,){
final _that = this;
switch (_that) {
case _MachineEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MachineEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MachineEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'item')  ItemEntity? item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MachineEntity() when $default != null:
return $default(_that.id,_that.url,_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'item')  ItemEntity? item)  $default,) {final _that = this;
switch (_that) {
case _MachineEntity():
return $default(_that.id,_that.url,_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'item')  ItemEntity? item)?  $default,) {final _that = this;
switch (_that) {
case _MachineEntity() when $default != null:
return $default(_that.id,_that.url,_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MachineEntity implements MachineEntity {
  const _MachineEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'url') this.url, @JsonKey(name: 'item') this.item});
  factory _MachineEntity.fromJson(Map<String, dynamic> json) => _$MachineEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'item') final  ItemEntity? item;

/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MachineEntityCopyWith<_MachineEntity> get copyWith => __$MachineEntityCopyWithImpl<_MachineEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MachineEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,item);

@override
String toString() {
  return 'MachineEntity(id: $id, url: $url, item: $item)';
}


}

/// @nodoc
abstract mixin class _$MachineEntityCopyWith<$Res> implements $MachineEntityCopyWith<$Res> {
  factory _$MachineEntityCopyWith(_MachineEntity value, $Res Function(_MachineEntity) _then) = __$MachineEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'url') String? url,@JsonKey(name: 'item') ItemEntity? item
});


@override $ItemEntityCopyWith<$Res>? get item;

}
/// @nodoc
class __$MachineEntityCopyWithImpl<$Res>
    implements _$MachineEntityCopyWith<$Res> {
  __$MachineEntityCopyWithImpl(this._self, this._then);

  final _MachineEntity _self;
  final $Res Function(_MachineEntity) _then;

/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? url = freezed,Object? item = freezed,}) {
  return _then(_MachineEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemEntity?,
  ));
}

/// Create a copy of MachineEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemEntityCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemEntityCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
