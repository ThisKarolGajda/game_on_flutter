import 'package:game_on/common/util/exports.dart';

class ReturnAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ReturnAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: 100.w,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: Container(
          margin: EdgeInsets.only(left: 7.w),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: text,
                size: 20.sp,
              ),
              SizedBox(width: 2.w),
              Text(
                title,
                style: TextStyles.lg(),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}