import 'package:cached_network_image/cached_network_image.dart';
import 'package:game_on/common/util/exports.dart';

class MinecraftHeadCacheWidget extends StatelessWidget {
  final String uuid;
  final double? height;
  final double? width;

  const MinecraftHeadCacheWidget({
    super.key,
    required this.uuid,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://mc-heads.net/avatar/$uuid',
      width: height ?? 5.h,
      height: width ?? 5.h,
      fit: BoxFit.cover,
      placeholder: (context, url) => Image.asset('images/steve.png'),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
