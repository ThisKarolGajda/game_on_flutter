import 'package:carousel_slider/carousel_slider.dart';
import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/widgets/bloc_loading_widget.dart';
import 'package:game_on/features/news/data/data_sources/gameon_news_api.dart';
import 'package:game_on/features/news/data/models/news_model.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_daily_reward_api.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLoggedInServer(context),
          SizedBox(height: 4.h),
          buildLatestNews(),
          SizedBox(height: 4.h),
          buildDailyReward(),
          SizedBox(height: 4.h),
          buildServerGoals(),
        ],
      ),
    );
  }

  buildLoggedInServer(BuildContext context) {
    return BlocLoadingWidget<UserBloc, UserState>(
      expectedState: UserLoaded,
      builder: (context, state) {
        if (state is! UserLoaded) {
          return Container();
        }

        UserLoaded loaded = state;
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 7.h,
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                color: accent,
                child: Row(
                  children: [
                    Image.network(
                      loaded.serverModel.basicData.image,
                      height: 6.5.h,
                      width: 6.5.h,
                    ),
                    SizedBox(width: 6.5.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Zalogowano na: ${loaded.serverModel.basicData.name}',
                          style: TextStyles.base().copyWith(color: onAccent),
                        ),
                        Row(
                          children: [
                            Text(
                              'Graczy online: ${loaded.serverModel.info?.onlinePlayers?.length}',
                              style: TextStyles.sm().copyWith(color: onAccent),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Graczy w aplikacji: -',
                              style: TextStyles.sm().copyWith(color: onAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  buildDailyReward() {
    return BlocLoadingWidget<UserBloc, UserState>(
      expectedState: UserLoaded,
      builder: (context, state) {
        if (state is! UserLoaded) {
          return Container();
        }

        UserLoaded loaded = state;
        return FutureBuilder(
          future: get<GameonUserDailyRewardApi>().hasAvailableDailyReward(
              loaded.serverModel.basicData.address,
              loaded.serverModel.basicData.port),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            bool claimed = snapshot.data == null || snapshot.data!;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    claimed ? 'Dzienna nagroda odebrana' : 'Dzienna nagroda',
                    style: TextStyles.lg(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: borderRadius,
                    ),
                    padding: EdgeInsets.all(10.sp),
                    width: 86.w,
                    child: Row(
                      children: [
                        Image.network(
                          'https://static.wikia.nocookie.net/minecraft_gamepedia/images/7/72/Chest_%28S%29_JE2.png/revision/latest?cb=20191230024542',
                          fit: BoxFit.cover,
                          height: 9.h,
                          width: 9.h,
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 70.w,
                                child: Text(
                                  'Tutaj możesz otrzymać wszystko, \na wystarczy, że obejrzysz reklamę! \nNagroda odświeża się po północy.',
                                  style: TextStyles.sm(),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              if (!claimed)
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () async {
                                    bool claimed =
                                        await get<GameonUserDailyRewardApi>()
                                            .claimDailyReward(
                                                loaded.serverModel.basicData
                                                    .address,
                                                loaded.serverModel.basicData
                                                    .port);
                                    if (claimed) {
                                      setState(() {});
                                    } else {
                                      //todo: couldn't claim - probably user is not in-game
                                      if (kDebugMode) {
                                        print('Not claimed');
                                      }
                                    }
                                  },
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 6.sp,
                                        horizontal: 10.sp,
                                      ),
                                      decoration: BoxDecoration(
                                        color: accent,
                                        borderRadius: borderRadius,
                                      ),
                                      child: Text(
                                        'ODBIERZ',
                                        style: TextStyles.base()
                                            .copyWith(color: onAccent),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  buildLatestNews() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: BlocLoadingWidget<UserBloc, UserState>(
        expectedState: UserLoaded,
        builder: (context, state) {
          if (state is! UserLoaded) {
            return Container();
          }

          UserLoaded loaded = state;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Co tu sie dzieje!?',
                style: TextStyles.lg(),
              ),
              FutureBuilder(
                future: get<GameonNewsApi>().getLatestNews(
                  loaded.serverModel.basicData.address,
                  loaded.serverModel.basicData.port,
                ),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: borderRadius,
                      ),
                      width: 86.w,
                      height: 18.h,
                      child: Text(
                        'Szukamy najnowszego newsu...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          fontFamily: 'Lexend',
                          letterSpacing: -0.80,
                        ),
                      ),
                    );
                  }

                  NewsModel news = snapshot.data!;
                  return Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: borderRadius,
                    ),
                    width: 86.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            fontFamily: 'Lexend',
                            letterSpacing: -0.80,
                            color: text,
                          ),
                        ),
                        Text(
                          news.description,
                          style: TextStyles.sm(),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 1.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 6.sp,
                              horizontal: 10.sp,
                            ),
                            decoration: BoxDecoration(
                              color: accent,
                              borderRadius: borderRadius,
                            ),
                            child: Text(
                              'ZOBACZ',
                              style:
                                  TextStyles.base().copyWith(color: onAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  buildServerGoals() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Serwerowe cele w tym miesiącu',
            style: TextStyles.lg(),
          ),
          //todo create backend + integrate
          CarouselSlider(
            items: [
              {
                'name': 'Przebyty dystans',
                'reached': 1239,
                'goal': 15000,
              },
            ].map((goal) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: secondary,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 14.sp, vertical: 12.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      'https://static.wikia.nocookie.net/minecraft_gamepedia/images/2/25/Leather_Boots_JE3_BE2.png/revision/latest?cb=20200218001857',
                      fit: BoxFit.cover,
                      height: 7.h,
                      width: 7.h,
                    ),
                    SizedBox(width: 2.w),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          goal['name'].toString(),
                          style: TextStyles.base(),
                        ),
                        Text(
                          '${goal['reached'].toString()}/${goal['goal'].toString()} bloków',
                          style: TextStyles.sm(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 0.7,
              enableInfiniteScroll: false,
              height: 9.h,
            ),
          ),
        ],
      ),
    );
  }
}
