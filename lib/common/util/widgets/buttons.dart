import '../exports.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const PrimaryButton({
    super.key,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 86.w,
        height: 6.h,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: accent,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.lg().copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const SecondaryButton({
    super.key,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 86.w,
        height: 6.h,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: secondary,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.lg(),
          ),
        ),
      ),
    );
  }
}
