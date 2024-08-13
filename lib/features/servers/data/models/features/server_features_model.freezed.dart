// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_features_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerFeaturesModel _$ServerFeaturesModelFromJson(Map<String, dynamic> json) {
  return _ServerFeaturesModel.fromJson(json);
}

/// @nodoc
mixin _$ServerFeaturesModel {
  List<String> get features => throw _privateConstructorUsedError;

  /// Serializes this ServerFeaturesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServerFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerFeaturesModelCopyWith<ServerFeaturesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFeaturesModelCopyWith<$Res> {
  factory $ServerFeaturesModelCopyWith(
          ServerFeaturesModel value, $Res Function(ServerFeaturesModel) then) =
      _$ServerFeaturesModelCopyWithImpl<$Res, ServerFeaturesModel>;
  @useResult
  $Res call({List<String> features});
}

/// @nodoc
class _$ServerFeaturesModelCopyWithImpl<$Res, $Val extends ServerFeaturesModel>
    implements $ServerFeaturesModelCopyWith<$Res> {
  _$ServerFeaturesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFeaturesModelImplCopyWith<$Res>
    implements $ServerFeaturesModelCopyWith<$Res> {
  factory _$$ServerFeaturesModelImplCopyWith(_$ServerFeaturesModelImpl value,
          $Res Function(_$ServerFeaturesModelImpl) then) =
      __$$ServerFeaturesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> features});
}

/// @nodoc
class __$$ServerFeaturesModelImplCopyWithImpl<$Res>
    extends _$ServerFeaturesModelCopyWithImpl<$Res, _$ServerFeaturesModelImpl>
    implements _$$ServerFeaturesModelImplCopyWith<$Res> {
  __$$ServerFeaturesModelImplCopyWithImpl(_$ServerFeaturesModelImpl _value,
      $Res Function(_$ServerFeaturesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_$ServerFeaturesModelImpl(
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFeaturesModelImpl implements _ServerFeaturesModel {
  const _$ServerFeaturesModelImpl({required final List<String> features})
      : _features = features;

  factory _$ServerFeaturesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerFeaturesModelImplFromJson(json);

  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'ServerFeaturesModel(features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFeaturesModelImpl &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  /// Create a copy of ServerFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFeaturesModelImplCopyWith<_$ServerFeaturesModelImpl> get copyWith =>
      __$$ServerFeaturesModelImplCopyWithImpl<_$ServerFeaturesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFeaturesModelImplToJson(
      this,
    );
  }
}

abstract class _ServerFeaturesModel implements ServerFeaturesModel {
  const factory _ServerFeaturesModel({required final List<String> features}) =
      _$ServerFeaturesModelImpl;

  factory _ServerFeaturesModel.fromJson(Map<String, dynamic> json) =
      _$ServerFeaturesModelImpl.fromJson;

  @override
  List<String> get features;

  /// Create a copy of ServerFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFeaturesModelImplCopyWith<_$ServerFeaturesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
