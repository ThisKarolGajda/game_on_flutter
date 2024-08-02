import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/presentation/bloc/server/server_bloc.dart';
import 'package:game_on/features/servers/presentation/bloc/server_info_list/server_info_list_bloc.dart';

class GameOnApp extends StatelessWidget {
  const GameOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => get<ServerBloc>()),
            BlocProvider(create: (context) => get<ServerInfoListBloc>()),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.light(
                primary: accent,
                secondary: secondary,
                surface: background,
                onSurface: text,
              ),
              fontFamily: 'Lexend',
              appBarTheme: AppBarTheme(
                backgroundColor: background,
              )
            ),
          ),
        );
      },
    );
  }
}
