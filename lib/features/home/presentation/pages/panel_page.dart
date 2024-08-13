import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/widgets/bloc_loading_widget.dart';
import 'package:game_on/features/stats/data/data_sources/gameon_stats_api.dart';
import 'package:game_on/features/stats/data/models/stats_model.dart';
import 'package:game_on/features/stats/presentation/widgets/stats_widget.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class PanelPage extends StatelessWidget {
  const PanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          children: [
            SizedBox(height: 1.h),
            buildGlobalStats(),
            SizedBox(height: 2.h),
            PrimaryButton(
              title: 'otwórz profil',
              onTap: () async {
                UserBloc bloc = get();
                if (bloc.state is! UserLoaded) {
                  return;
                }

                context.push('/user/page',
                    extra: (bloc.state as UserLoaded).userModel);
              },
            ),
          ],
        ),
      ),
    );
  }

  buildGlobalStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Statystyki',
          style: TextStyles.lg(),
        ),
        BlocLoadingWidget<UserBloc, UserState>(
          builder: (context, state) {
            if (state is! UserLoaded) return Container();

            return FutureBuilder(
              future: Future.wait([
                get<GameonStatsApi>().getGlobalStats(
                  state.serverModel.basicData.address,
                  state.serverModel.basicData.port,
                ),
                get<GameonStatsApi>().getUserStats(
                  state.serverModel.basicData.address,
                  state.serverModel.basicData.port,
                ),
              ]),
              builder: (context, AsyncSnapshot<List<StatsModel?>> snapshot) {
                if (!snapshot.hasData ||
                    snapshot.data![0] == null ||
                    snapshot.data![1] == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                StatsModel globalModel = snapshot.data![0]!;
                StatsModel userModel = snapshot.data![1]!;

                return StatsWidget(
                  userModel: userModel,
                  globalModel: globalModel,
                );
              },
            );
          },
          expectedState: UserLoaded,
        ),
      ],
    );
  }
}
