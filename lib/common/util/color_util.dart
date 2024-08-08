import 'package:flutter/services.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

import 'exports.dart';

bool isLightModeEnabled = true;

void toggleLightMode() {
  isLightModeEnabled = !isLightModeEnabled;
  updateLightMode();
}

void updateLightMode() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: isLightModeEnabled ? Brightness.dark : Brightness.light,
  ));
}

Color getColor(String colorType) {
  UserState userState = get<UserBloc>().state;
  if (userState is UserLoaded) {
    ServerState serverState = get<ServerBloc>().state;
    if (serverState is ServersLoaded) {
      ServerModel? server = serverState.servers
          .where((server) => server.basicData == userState.serverModel.basicData)
          .firstOrNull;
      if (server?.colorPanel != null) {
        switch (colorType) {
          case 'text':
            return isLightModeEnabled ? server!.colorPanel!.backgroundColor : server!.colorPanel!.textColor;
          case 'background':
            return isLightModeEnabled ? server!.colorPanel!.textColor : server!.colorPanel!.backgroundColor;
          case 'accent':
            return server!.colorPanel!.accentColor;
          case 'secondary':
            return server!.colorPanel!.secondaryColor;
        }
      }
    }
  }

  switch (colorType) {
    case 'text':
      return isLightModeEnabled ? const Color(0xFF010A0E) : onAccent;
    case 'background':
      return isLightModeEnabled ? onAccent : const Color(0xFF010A0E);
    case 'accent':
      return const Color(0xFF37B0D9);
    case 'secondary':
      return const Color(0x4090B1F0);
    default:
      return Colors.black;
  }
}

Color get text => getColor('text');
Color get background => getColor('background');
Color get accent => getColor('accent');
Color get secondary => getColor('secondary');
Color get onAccent => const Color(0xFFC1F4FF);