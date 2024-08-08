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
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 1.h,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 86.w,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Korzystając z aplikacji zgadasz się na Zasady Przetwarzania Danych',
                    style: TextStyles.sm(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15.h,
            child: SizedBox(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: TextStyles.base(),
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
            ),
          ),
        ],
      ),
    );
  }
}
