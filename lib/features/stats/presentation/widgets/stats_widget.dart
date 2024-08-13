import 'package:carousel_slider/carousel_slider.dart';
import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/stats/data/models/stats_model.dart';

class StatsWidget extends StatelessWidget {
  final StatsModel? globalModel;
  final StatsModel? userModel;

  const StatsWidget({
    super.key,
    this.globalModel,
    this.userModel,
  }) : assert(globalModel != null || userModel != null);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 10.5.h,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 0.5,
      ),
      items: [
        StatCardWidget(
          imagePath: 'images/minecraft/golden_apple.png',
          title: 'Zjedzone złote jabłka',
          globalValue: globalModel?.values.eatenGoldenApples,
          userValue: userModel?.values.eatenGoldenApples,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/emerald_block.png',
          title: 'Pieniądze na serwerze',
          globalValue: globalModel?.values.money,
          userValue: userModel?.values.money,
          isMoney: true,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/netherite_hoe.png',
          title: 'Stworzone przedmioty',
          globalValue: globalModel?.values.itemsCrafted,
          userValue: userModel?.values.itemsCrafted,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/netherite_hoe.png',
          title: 'Zniszczone przedmioty',
          globalValue: globalModel?.values.brokenTools,
          userValue: userModel?.values.brokenTools,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/player_head.png',
          title: 'Śmierci',
          globalValue: globalModel?.values.deaths,
          userValue: userModel?.values.deaths,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/spawn_egg.png',
          title: 'Rozmnożone zwierzęta',
          globalValue: globalModel?.values.animalBreed,
          userValue: userModel?.values.animalBreed,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/player_head.png',
          title: 'Zabójstwa',
          globalValue: globalModel?.values.kills,
          userValue: userModel?.values.kills,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/experience_bottle.png',
          title: 'Zdobyte doświadczenie',
          globalValue: globalModel?.values.xpGained,
          userValue: userModel?.values.xpGained,
          isXp: true,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/diamond_sword.png',
          title: 'Zadane obrażenia',
          globalValue: globalModel?.values.dealtDamage,
          userValue: userModel?.values.dealtDamage,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/ender_pearl.png',
          title: 'Rzucone ender perły',
          globalValue: globalModel?.values.thrownEnderPearls,
          userValue: userModel?.values.thrownEnderPearls,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/leather_boots.png',
          title: 'Przebyty dystans',
          globalValue: globalModel?.values.walkedDistance,
          userValue: userModel?.values.walkedDistance,
          isDistance: true,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/mob_head.png',
          title: 'Zabójstwa mobów',
          globalValue: globalModel?.values.mobKills,
          userValue: userModel?.values.mobKills,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/hourglass.png',
          title: 'Przegrany czas',
          globalValue: globalModel?.values.playedTime,
          userValue: userModel?.values.playedTime,
          isSeconds: true,
        ),
        StatCardWidget(
          imagePath: 'images/minecraft/stone.png',
          title: 'Wykopane bloki',
          globalValue: globalModel?.values.minedBlocks,
          userValue: userModel?.values.minedBlocks,
        ),
      ],
    );
  }
}

class StatCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final int? globalValue;
  final int? userValue;
  final bool isMoney;
  final bool isSeconds;
  final bool isXp;
  final bool isDistance;

  const StatCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.globalValue,
    this.userValue,
    this.isSeconds = false,
    this.isDistance = false,
    this.isMoney = false,
    this.isXp = false,
  });

  @override
  Widget build(BuildContext context) {
    String globalValueText = isSeconds
        ? formatTime(globalValue ?? 0)
        : isDistance
            ? formatDistance(globalValue ?? 0)
            : '${globalValue ?? 0}${isMoney ? '\$' : ''}${isXp ? 'xp' : ''}';

    String userValueText = isSeconds
        ? formatTime(userValue ?? 0)
        : isDistance
            ? formatDistance(userValue ?? 0)
            : '${userValue ?? 0}${isMoney ? '\$' : ''}${isXp ? 'xp' : ''}';

    return Container(
      constraints: BoxConstraints(
        maxHeight: 8.w,
      ),
      decoration: BoxDecoration(
        color: secondary,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 1.w),
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 9.w,
              width: 9.w,
            ),
            SizedBox(
              width: 31.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyles.base(),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    globalValue == null ? userValueText : '$globalValueText ${userValue == null ? '' : '(ty $userValueText)'}',
                    style: TextStyles.sm(),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatTime(int seconds) {
    if (seconds <= 0) return '0s';

    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    List<String> timeParts = [];
    if (hours > 0) {
      timeParts.add('$hours' 'h');
    }
    if (minutes > 0) {
      timeParts.add('$minutes' 'm');
    }
    if (remainingSeconds > 0) {
      timeParts.add('$remainingSeconds' 's');
    }

    return timeParts.join(' ');
  }

  String formatDistance(int meters) {
    if (meters <= 0) return '0m';

    double kilometers = meters / 1000;

    List<String> distanceParts = [];
    if (kilometers >= 1) {
      distanceParts.add('${kilometers.toStringAsFixed(2)}km');
    }

    return distanceParts.join(' ');
  }
}
