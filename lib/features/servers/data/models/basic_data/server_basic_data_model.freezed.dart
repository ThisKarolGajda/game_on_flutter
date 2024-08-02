// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_basic_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerBasicDataModel _$ServerBasicDataModelFromJson(Map<String, dynamic> json) {
  return _ServerModel.fromJson(json);
}

/// @nodoc
mixin _$ServerBasicDataModel {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerBasicDataModelCopyWith<ServerBasicDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerBasicDataModelCopyWith<$Res> {
  factory $ServerBasicDataModelCopyWith(ServerBasicDataModel value,
          $Res Function(ServerBasicDataModel) then) =
      _$ServerBasicDataModelCopyWithImpl<$Res, ServerBasicDataModel>;
  @useResult
  $Res call(
      {String name,
      String address,
      int port,
      String image,
      bool featured,
      String description});
}

/// @nodoc
class _$ServerBasicDataModelCopyWithImpl<$Res,
        $Val extends ServerBasicDataModel>
    implements $ServerBasicDataModelCopyWith<$Res> {
  _$ServerBasicDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? port = null,
    Object? image = null,
    Object? featured = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerModelImplCopyWith<$Res>
    implements $ServerBasicDataModelCopyWith<$Res> {
  factory _$$ServerModelImplCopyWith(
          _$ServerModelImpl value, $Res Function(_$ServerModelImpl) then) =
      __$$ServerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String address,
      int port,
      String image,
      bool featured,
      String description});
}

/// @nodoc
class __$$ServerModelImplCopyWithImpl<$Res>
    extends _$ServerBasicDataModelCopyWithImpl<$Res, _$ServerModelImpl>
    implements _$$ServerModelImplCopyWith<$Res> {
  __$$ServerModelImplCopyWithImpl(
      _$ServerModelImpl _value, $Res Function(_$ServerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? port = null,
    Object? image = null,
    Object? featured = null,
    Object? description = null,
  }) {
    return _then(_$ServerModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerModelImpl implements _ServerModel {
  const _$ServerModelImpl(
      {required this.name,
      required this.address,
      required this.port,
      required this.image,
      required this.featured,
      required this.description});

  factory _$ServerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerModelImplFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final int port;
  @override
  final String image;
  @override
  final bool featured;
  @override
  final String description;

  @override
  String toString() {
    return 'ServerBasicDataModel(name: $name, address: $address, port: $port, image: $image, featured: $featured, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, address, port, image, featured, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerModelImplCopyWith<_$ServerModelImpl> get copyWith =>
      __$$ServerModelImplCopyWithImpl<_$ServerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerModelImplToJson(
      this,
    );
  }
}

abstract class _ServerModel implements ServerBasicDataModel {
  const factory _ServerModel(
      {required final String name,
      required final String address,
      required final int port,
      required final String image,
      required final bool featured,
      required final String description}) = _$ServerModelImpl;

  factory _ServerModel.fromJson(Map<String, dynamic> json) =
      _$ServerModelImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  int get port;
  @override
  String get image;
  @override
  bool get featured;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ServerModelImplCopyWith<_$ServerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
