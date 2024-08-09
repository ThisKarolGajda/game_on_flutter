import 'package:game_on/common/util/exports.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final IconData? prefixIcon;

  const DefaultTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: secondary,
      ),
      child: TextField(
        textAlign: TextAlign.start,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyles.sm(),
          border: InputBorder.none,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  size: 20.sp,
                  color: text,
                )
              : null,
        ),
        style: TextStyles.lg(),
      ),
    );
  }
}
