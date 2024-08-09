// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_panel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorPanelModel _$ColorPanelModelFromJson(Map<String, dynamic> json) {
  return _ColorPanelModel.fromJson(json);
}

/// @nodoc
mixin _$ColorPanelModel {
  String get accent => throw _privateConstructorUsedError; // 0xAARRGGBB
  String get secondary => throw _privateConstructorUsedError; // 0xAARRGGBB
  String get background => throw _privateConstructorUsedError; // 0xAARRGGBB
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorPanelModelCopyWith<ColorPanelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorPanelModelCopyWith<$Res> {
  factory $ColorPanelModelCopyWith(
          ColorPanelModel value, $Res Function(ColorPanelModel) then) =
      _$ColorPanelModelCopyWithImpl<$Res, ColorPanelModel>;
  @useResult
  $Res call({String accent, String secondary, String background, String text});
}

/// @nodoc
class _$ColorPanelModelCopyWithImpl<$Res, $Val extends ColorPanelModel>
    implements $ColorPanelModelCopyWith<$Res> {
  _$ColorPanelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accent = null,
    Object? secondary = null,
    Object? background = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorPanelModelImplCopyWith<$Res>
    implements $ColorPanelModelCopyWith<$Res> {
  factory _$$ColorPanelModelImplCopyWith(_$ColorPanelModelImpl value,
          $Res Function(_$ColorPanelModelImpl) then) =
      __$$ColorPanelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accent, String secondary, String background, String text});
}

/// @nodoc
class __$$ColorPanelModelImplCopyWithImpl<$Res>
    extends _$ColorPanelModelCopyWithImpl<$Res, _$ColorPanelModelImpl>
    implements _$$ColorPanelModelImplCopyWith<$Res> {
  __$$ColorPanelModelImplCopyWithImpl(
      _$ColorPanelModelImpl _value, $Res Function(_$ColorPanelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accent = null,
    Object? secondary = null,
    Object? background = null,
    Object? text = null,
  }) {
    return _then(_$ColorPanelModelImpl(
      accent: null == accent
          ? _value.accent
          : accent // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorPanelModelImpl extends _ColorPanelModel {
  const _$ColorPanelModelImpl(
      {required this.accent,
      required this.secondary,
      required this.background,
      required this.text})
      : super._();

  factory _$ColorPanelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorPanelModelImplFromJson(json);

  @override
  final String accent;
// 0xAARRGGBB
  @override
  final String secondary;
// 0xAARRGGBB
  @override
  final String background;
// 0xAARRGGBB
  @override
  final String text;

  @override
  String toString() {
    return 'ColorPanelModel(accent: $accent, secondary: $secondary, background: $background, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorPanelModelImpl &&
            (identical(other.accent, accent) || other.accent == accent) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accent, secondary, background, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorPanelModelImplCopyWith<_$ColorPanelModelImpl> get copyWith =>
      __$$ColorPanelModelImplCopyWithImpl<_$ColorPanelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorPanelModelImplToJson(
      this,
    );
  }
}

abstract class _ColorPanelModel extends ColorPanelModel {
  const factory _ColorPanelModel(
      {required final String accent,
      required final String secondary,
      required final String background,
      required final String text}) = _$ColorPanelModelImpl;
  const _ColorPanelModel._() : super._();

  factory _ColorPanelModel.fromJson(Map<String, dynamic> json) =
      _$ColorPanelModelImpl.fromJson;

  @override
  String get accent;
  @override // 0xAARRGGBB
  String get secondary;
  @override // 0xAARRGGBB
  String get background;
  @override // 0xAARRGGBB
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$ColorPanelModelImplCopyWith<_$ColorPanelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
