import 'package:cached_network_image/cached_network_image.dart';
import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/user/data/models/user_model.dart';

class MinecraftHeadCacheWidget extends StatelessWidget {
  final UserModelUserId userId;
  final double? height;
  final double? width;
  final bool bust;

  const MinecraftHeadCacheWidget({
    super.key,
    required this.userId,
    this.height,
    this.width,
    this.bust = false,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: bust ? 'https://minotar.net/armor/bust/${userId.nickname}/100' : 'https://minotar.net/helm/${userId.nickname}/100',
      width: width ?? 5.h,
      height: height ?? 5.h,
      fit: bust ? BoxFit.fill : BoxFit.cover,
      placeholder: (context, url) => Image.asset('images/minecraft/player_head.png'),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
