import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class GameonApp extends StatelessWidget {
  const GameonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => get<ServerBloc>()),
            BlocProvider(create: (context) => get<UserBloc>()),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            title: 'GameOn',
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
                )),
          ),
        );
      },
    );
  }
}
