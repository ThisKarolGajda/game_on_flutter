import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/pages/server_list_page.dart';
import 'package:game_on/features/servers/presentation/pages/server_page.dart';
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
      path: '/servers/page',
      builder: (context, state) => ServerPage(serverModel: state.extra as ServerModel),
    ),
  ],
);
