import 'package:game_on/common/util/exports.dart';

class Background extends StatelessWidget {
  final Widget? child;

  const Background({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background-shadows.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
