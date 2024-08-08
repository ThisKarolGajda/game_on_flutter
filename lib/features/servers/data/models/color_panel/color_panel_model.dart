import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_panel_model.freezed.dart';
part 'color_panel_model.g.dart';

@freezed
class ColorPanelModel with _$ColorPanelModel {
  const ColorPanelModel._();

  const factory ColorPanelModel(
      {required String accent, // 0xAARRGGBB
      required String secondary, // 0xAARRGGBB
      required String background, // 0xAARRGGBB
      required String text // 0xAARRGGBB
      }) = _ColorPanelModel;

  factory ColorPanelModel.fromJson(Map<String, dynamic> json) =>
      _$ColorPanelModelFromJson(json);

  Color getAccentColor() => _parseColor(accent);

  Color getSecondaryColor() => _parseColor(secondary);

  Color getBackgroundColor() => _parseColor(background);

  Color getTextColor() => _parseColor(text);

  Color _parseColor(String colorString) {
    String hexColor = colorString.replaceAll('#', '').replaceAll('0x', '');
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  Color get accentColor => getAccentColor();

  Color get secondaryColor => getSecondaryColor();

  Color get backgroundColor => getBackgroundColor();

  Color get textColor => getTextColor();

  Map<String, Color> getAllColors() {
    return {
      'accent': accentColor,
      'secondary': secondaryColor,
      'background': backgroundColor,
      'text': textColor,
    };
  }
}
