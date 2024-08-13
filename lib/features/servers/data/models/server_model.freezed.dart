// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerModel _$ServerModelFromJson(Map<String, dynamic> json) {
  return _ServerModel.fromJson(json);
}

/// @nodoc
mixin _$ServerModel {
  ServerFeaturesModel? get features => throw _privateConstructorUsedError;
  ServerInfoModel? get info => throw _privateConstructorUsedError;
  ServerBasicDataModel get basicData => throw _privateConstructorUsedError;
  ColorPanelModel? get colorPanel => throw _privateConstructorUsedError;

  /// Serializes this ServerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerModelCopyWith<ServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerModelCopyWith<$Res> {
  factory $ServerModelCopyWith(
          ServerModel value, $Res Function(ServerModel) then) =
      _$ServerModelCopyWithImpl<$Res, ServerModel>;
  @useResult
  $Res call(
      {ServerFeaturesModel? features,
      ServerInfoModel? info,
      ServerBasicDataModel basicData,
      ColorPanelModel? colorPanel});

  $ServerFeaturesModelCopyWith<$Res>? get features;
  $ServerInfoModelCopyWith<$Res>? get info;
  $ServerBasicDataModelCopyWith<$Res> get basicData;
  $ColorPanelModelCopyWith<$Res>? get colorPanel;
}

/// @nodoc
class _$ServerModelCopyWithImpl<$Res, $Val extends ServerModel>
    implements $ServerModelCopyWith<$Res> {
  _$ServerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = freezed,
    Object? info = freezed,
    Object? basicData = null,
    Object? colorPanel = freezed,
  }) {
    return _then(_value.copyWith(
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as ServerFeaturesModel?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ServerInfoModel?,
      basicData: null == basicData
          ? _value.basicData
          : basicData // ignore: cast_nullable_to_non_nullable
              as ServerBasicDataModel,
      colorPanel: freezed == colorPanel
          ? _value.colorPanel
          : colorPanel // ignore: cast_nullable_to_non_nullable
              as ColorPanelModel?,
    ) as $Val);
  }

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerFeaturesModelCopyWith<$Res>? get features {
    if (_value.features == null) {
      return null;
    }

    return $ServerFeaturesModelCopyWith<$Res>(_value.features!, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerInfoModelCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $ServerInfoModelCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerBasicDataModelCopyWith<$Res> get basicData {
    return $ServerBasicDataModelCopyWith<$Res>(_value.basicData, (value) {
      return _then(_value.copyWith(basicData: value) as $Val);
    });
  }

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorPanelModelCopyWith<$Res>? get colorPanel {
    if (_value.colorPanel == null) {
      return null;
    }

    return $ColorPanelModelCopyWith<$Res>(_value.colorPanel!, (value) {
      return _then(_value.copyWith(colorPanel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerModelImplCopyWith<$Res>
    implements $ServerModelCopyWith<$Res> {
  factory _$$ServerModelImplCopyWith(
          _$ServerModelImpl value, $Res Function(_$ServerModelImpl) then) =
      __$$ServerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ServerFeaturesModel? features,
      ServerInfoModel? info,
      ServerBasicDataModel basicData,
      ColorPanelModel? colorPanel});

  @override
  $ServerFeaturesModelCopyWith<$Res>? get features;
  @override
  $ServerInfoModelCopyWith<$Res>? get info;
  @override
  $ServerBasicDataModelCopyWith<$Res> get basicData;
  @override
  $ColorPanelModelCopyWith<$Res>? get colorPanel;
}

/// @nodoc
class __$$ServerModelImplCopyWithImpl<$Res>
    extends _$ServerModelCopyWithImpl<$Res, _$ServerModelImpl>
    implements _$$ServerModelImplCopyWith<$Res> {
  __$$ServerModelImplCopyWithImpl(
      _$ServerModelImpl _value, $Res Function(_$ServerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = freezed,
    Object? info = freezed,
    Object? basicData = null,
    Object? colorPanel = freezed,
  }) {
    return _then(_$ServerModelImpl(
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as ServerFeaturesModel?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ServerInfoModel?,
      basicData: null == basicData
          ? _value.basicData
          : basicData // ignore: cast_nullable_to_non_nullable
              as ServerBasicDataModel,
      colorPanel: freezed == colorPanel
          ? _value.colorPanel
          : colorPanel // ignore: cast_nullable_to_non_nullable
              as ColorPanelModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerModelImpl implements _ServerModel {
  const _$ServerModelImpl(
      {this.features, this.info, required this.basicData, this.colorPanel});

  factory _$ServerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerModelImplFromJson(json);

  @override
  final ServerFeaturesModel? features;
  @override
  final ServerInfoModel? info;
  @override
  final ServerBasicDataModel basicData;
  @override
  final ColorPanelModel? colorPanel;

  @override
  String toString() {
    return 'ServerModel(features: $features, info: $info, basicData: $basicData, colorPanel: $colorPanel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerModelImpl &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.basicData, basicData) ||
                other.basicData == basicData) &&
            (identical(other.colorPanel, colorPanel) ||
                other.colorPanel == colorPanel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, features, info, basicData, colorPanel);

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _ServerModel implements ServerModel {
  const factory _ServerModel(
      {final ServerFeaturesModel? features,
      final ServerInfoModel? info,
      required final ServerBasicDataModel basicData,
      final ColorPanelModel? colorPanel}) = _$ServerModelImpl;

  factory _ServerModel.fromJson(Map<String, dynamic> json) =
      _$ServerModelImpl.fromJson;

  @override
  ServerFeaturesModel? get features;
  @override
  ServerInfoModel? get info;
  @override
  ServerBasicDataModel get basicData;
  @override
  ColorPanelModel? get colorPanel;

  /// Create a copy of ServerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerModelImplCopyWith<_$ServerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
