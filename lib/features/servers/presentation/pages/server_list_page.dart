import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/presentation/bloc/server_bloc.dart';
import 'package:game_on/features/servers/presentation/widgets/server_card_widget.dart';

class ServerListPage extends StatefulWidget {
  const ServerListPage({super.key});

  @override
  State<ServerListPage> createState() => _ServerListPageState();
}

class _ServerListPageState extends State<ServerListPage> {
  late List<ServerModel> _servers = [];

  @override
  void initState() {
    _loadServers();
    super.initState();
  }

  _loadServers() async {
    ServersLoaded? state = await get<ServerBloc>().addAndWait(ServerLoadList());
    if (state != null) {
      setState(() {
        _servers = state.servers;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
      appBar: const ReturnAppBar(title: 'Lista serwerów'),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: BlocListener<ServerBloc, ServerState>(
        listener: (context, state) {
          Future.delayed(const Duration(minutes: 1), () {
            if (state is ServersLoaded) {
              setState(() {
                _servers = state.servers;
              });
            }
          });
        },
        child: _buildServerList(_servers),
      ),
    );
  }

  Widget _buildServerList(List<ServerModel> servers) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Promowane serwery',
            style: TextStyles.base(),
          ),
          ...servers.where((server) => server.basicData.featured).map(
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
          ...servers.where((server) => !server.basicData.featured).map(
                (server) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.5.h),
                  child: ServerCardWidget(serverModel: server),
                ),
              ),
        ],
      ),
    );
  }
}
