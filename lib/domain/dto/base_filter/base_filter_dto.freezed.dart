// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseFilterDTO {

@JsonKey(name: 'offset') int? get offset;@JsonKey(name: 'limit') int? get limit;
/// Create a copy of BaseFilterDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseFilterDTOCopyWith<BaseFilterDTO> get copyWith => _$BaseFilterDTOCopyWithImpl<BaseFilterDTO>(this as BaseFilterDTO, _$identity);

  /// Serializes this BaseFilterDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseFilterDTO&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'BaseFilterDTO(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $BaseFilterDTOCopyWith<$Res>  {
  factory $BaseFilterDTOCopyWith(BaseFilterDTO value, $Res Function(BaseFilterDTO) _then) = _$BaseFilterDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'offset') int? offset,@JsonKey(name: 'limit') int? limit
});




}
/// @nodoc
class _$BaseFilterDTOCopyWithImpl<$Res>
    implements $BaseFilterDTOCopyWith<$Res> {
  _$BaseFilterDTOCopyWithImpl(this._self, this._then);

  final BaseFilterDTO _self;
  final $Res Function(BaseFilterDTO) _then;

/// Create a copy of BaseFilterDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = freezed,Object? limit = freezed,}) {
  return _then(_self.copyWith(
offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseFilterDTO].
extension BaseFilterDTOPatterns on BaseFilterDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseFilterDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseFilterDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseFilterDTO value)  $default,){
final _that = this;
switch (_that) {
case _BaseFilterDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseFilterDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BaseFilterDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'limit')  int? limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseFilterDTO() when $default != null:
return $default(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'limit')  int? limit)  $default,) {final _that = this;
switch (_that) {
case _BaseFilterDTO():
return $default(_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'limit')  int? limit)?  $default,) {final _that = this;
switch (_that) {
case _BaseFilterDTO() when $default != null:
return $default(_that.offset,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _BaseFilterDTO implements BaseFilterDTO {
  const _BaseFilterDTO({@JsonKey(name: 'offset') this.offset, @JsonKey(name: 'limit') this.limit});
  

@override@JsonKey(name: 'offset') final  int? offset;
@override@JsonKey(name: 'limit') final  int? limit;

/// Create a copy of BaseFilterDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseFilterDTOCopyWith<_BaseFilterDTO> get copyWith => __$BaseFilterDTOCopyWithImpl<_BaseFilterDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseFilterDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseFilterDTO&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit);

@override
String toString() {
  return 'BaseFilterDTO(offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$BaseFilterDTOCopyWith<$Res> implements $BaseFilterDTOCopyWith<$Res> {
  factory _$BaseFilterDTOCopyWith(_BaseFilterDTO value, $Res Function(_BaseFilterDTO) _then) = __$BaseFilterDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'offset') int? offset,@JsonKey(name: 'limit') int? limit
});




}
/// @nodoc
class __$BaseFilterDTOCopyWithImpl<$Res>
    implements _$BaseFilterDTOCopyWith<$Res> {
  __$BaseFilterDTOCopyWithImpl(this._self, this._then);

  final _BaseFilterDTO _self;
  final $Res Function(_BaseFilterDTO) _then;

/// Create a copy of BaseFilterDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = freezed,Object? limit = freezed,}) {
  return _then(_BaseFilterDTO(
offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
