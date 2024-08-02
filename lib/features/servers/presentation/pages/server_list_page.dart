import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/servers/presentation/widgets/server_card_widget.dart';

class ServerListPage extends StatelessWidget {
  const ServerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
      appBar: const ReturnAppBar(title: 'Lista serwerów'),
    );
  }

  buildBody(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ServerBloc, ServerState>(
        builder: (context, state) {
          if (state is ServersLoaded) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promowane serwery',
                    style: TextStyles.base(),
                  ),
                  ...state.servers
                      .where((server) => server.basicData.featured)
                      .map(
                        (server) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: ServerCardWidget(serverModel: server),
                        ),
                      ),
                  SizedBox(height: 2.h),
                  Text(
                    'Zobacz, świeci',
                    style: TextStyles.base(),
                  ),
                  ...state.servers
                      .where((server) => !server.basicData.featured)
                      .map(
                        (server) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          child: ServerCardWidget(serverModel: server),
                        ),
                      ),
                ],
              ),
            );
          }

          if (state is ServerError) {
            return Text(state.exception.toString());
          }

          get<ServerBloc>().add(ServerLoadList());
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 7.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promowane serwery',
                  style: TextStyles.base(),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Zobacz, świeci',
                  style: TextStyles.base(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
