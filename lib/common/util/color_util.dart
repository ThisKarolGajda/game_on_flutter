import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool isLightModeEnabled = true;

void toggleLightMode() {
  isLightModeEnabled = !isLightModeEnabled;
  updateLightMode();
}

void updateLightMode() {
  if (isLightModeEnabled) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
  } else {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
  }
}

Color get text =>
    isLightModeEnabled ? const Color(0xFF010A0E) : white;

Color get background =>
    isLightModeEnabled ? white : const Color(0xFF010A0E);

Color get accent => const Color(0xFF37B0D9);

Color get secondary => const Color(0x4090B1F0);

Color get white => const Color(0xFFEFFAFD);