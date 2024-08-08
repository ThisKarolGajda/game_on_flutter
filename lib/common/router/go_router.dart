import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/home/presentation/pages/page_manager.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/pages/server_list_page.dart';
import 'package:game_on/features/servers/presentation/pages/server_login_page.dart';
import 'package:game_on/features/servers/presentation/pages/server_preview_page.dart';
import 'package:game_on/features/welcome/presentation/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: '/servers',
      builder: (context, state) => const ServerListPage(),
    ),
    GoRoute(
      path: '/server/preview',
      builder: (context, state) =>
          ServerPreviewPage(serverModel: state.extra as ServerModel),
    ),
    GoRoute(
      path: '/server/login',
      builder: (context, state) =>
          ServerLoginPage(serverModel: state.extra as ServerModel),
    ),
    GoRoute(
      path: '/server/page',
      builder: (context, state) => const PageManager(),
    ),
  ],
);
