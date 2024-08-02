import 'package:game_on/common/util/exports.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldUtil(
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/logo/logo.png',
            fit: BoxFit.cover,
            width: 43.w,
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Text(
              'Nie przerywaj gry, \nGameOn łączy Cię z Minecraftem, gdziekolwiek jesteś!',
              style: TextStyles.lg(),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 4.h),
          PrimaryButton(
            title: 'Zobacz listę',
            onTap: () => context.push('/servers'),
          ),
          SizedBox(height: 1.h),
          SecondaryButton(
            title: 'Dołącz do serwera',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
