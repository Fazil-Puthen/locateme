// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataList _$UserDataListFromJson(Map<String, dynamic> json) {
  return _UserDataList.fromJson(json);
}

/// @nodoc
mixin _$UserDataList {
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataListCopyWith<UserDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataListCopyWith<$Res> {
  factory $UserDataListCopyWith(
          UserDataList value, $Res Function(UserDataList) then) =
      _$UserDataListCopyWithImpl<$Res, UserDataList>;
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class _$UserDataListCopyWithImpl<$Res, $Val extends UserDataList>
    implements $UserDataListCopyWith<$Res> {
  _$UserDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataListImplCopyWith<$Res>
    implements $UserDataListCopyWith<$Res> {
  factory _$$UserDataListImplCopyWith(
          _$UserDataListImpl value, $Res Function(_$UserDataListImpl) then) =
      __$$UserDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$UserDataListImplCopyWithImpl<$Res>
    extends _$UserDataListCopyWithImpl<$Res, _$UserDataListImpl>
    implements _$$UserDataListImplCopyWith<$Res> {
  __$$UserDataListImplCopyWithImpl(
      _$UserDataListImpl _value, $Res Function(_$UserDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserDataListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataListImpl implements _UserDataList {
  const _$UserDataListImpl({required final List<Map<String, dynamic>> data})
      : _data = data;

  factory _$UserDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataListImplFromJson(json);

  final List<Map<String, dynamic>> _data;
  @override
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserDataList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataListImplCopyWith<_$UserDataListImpl> get copyWith =>
      __$$UserDataListImplCopyWithImpl<_$UserDataListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataListImplToJson(
      this,
    );
  }
}

abstract class _UserDataList implements UserDataList {
  const factory _UserDataList(
      {required final List<Map<String, dynamic>> data}) = _$UserDataListImpl;

  factory _UserDataList.fromJson(Map<String, dynamic> json) =
      _$UserDataListImpl.fromJson;

  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$UserDataListImplCopyWith<_$UserDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
