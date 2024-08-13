import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_on/common/util/background.dart';
import 'package:game_on/common/util/exports.dart';
import 'package:game_on/common/util/minecraft_heads_cache.dart';
import 'package:game_on/common/util/widgets/bloc_loading_widget.dart';
import 'package:game_on/features/home/presentation/pages/chats_page.dart';
import 'package:game_on/features/home/presentation/pages/forum_page.dart';
import 'package:game_on/features/home/presentation/pages/home_page.dart';
import 'package:game_on/features/home/presentation/pages/page_controller_handler.dart';
import 'package:game_on/features/home/presentation/pages/panel_page.dart';
import 'package:game_on/features/home/presentation/pages/settings_page.dart';
import 'package:game_on/features/user/presentation/bloc/user_bloc.dart';

class PageManager extends StatefulWidget {
  const PageManager({super.key});

  @override
  PageManagerState createState() => PageManagerState();
}

class PageManagerState extends State<PageManager> {
  final PageController _pageController =
      PageController(initialPage: PageControllerHandler.page);
  late List<Widget> _pages;

  @override
  void initState() {
    _pages = const [
      HomePage(),
      ForumPage(),
      PanelPage(),
      ChatsPage(),
      SettingsPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: buildAppBar(context),
      body: Background(
        child: PageView(
          controller: _pageController,
          onPageChanged: (page) => PageControllerHandler.page = page,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
      bottomNavigationBar: buildNavigationBar(),
    );
  }

  buildAppBar(BuildContext context) {
    if (PageControllerHandler.page == 0) {
      return AppBar(
        leadingWidth: 100.w,
        toolbarHeight: 10.h,
        backgroundColor: background,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
          child: BlocLoadingWidget<UserBloc, UserState>(
            expectedState: UserLoaded,
            builder: (context, state) {
              if (state is! UserLoaded) {
                return Container();
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0.5.h),
                  MinecraftHeadCacheWidget(
                    width: 7.h,
                    height: 7.h,
                    userId: state.userModel.userId,
                  ),
                  SizedBox(width: 3.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Witaj,',
                        style: TextStyles.base(),
                      ),
                      Text(
                        state.userModel.userId.nickname,
                        style: TextStyles.xxl(),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.5.h),
                ],
              );
            },
          ),
        ),
      );
    }

    return AppBar(
      leadingWidth: 100.w,
      toolbarHeight: 10.h,
      backgroundColor: background,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
        child: BlocLoadingWidget<UserBloc, UserState>(
          expectedState: UserLoaded,
          builder: (context, state) {
            if (state is! UserLoaded) {
              return Container(
                color: Colors.red,
                width: 10.w,
                height: 10.h,
              );
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0.5.h),
                Image.network(
                  state.serverModel.basicData.image,
                  width: 7.h,
                  height: 7.h,
                ),
                SizedBox(width: 3.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Grasz z ${state.serverModel.info?.onlinePlayers?.length ?? 0} innymi graczami',
                      style: TextStyles.sm(),
                    ),
                    SizedBox(
                      width: 65.w,
                      child: Text(
                        '${getPageName(PageControllerHandler.page)} na ${state.serverModel.basicData.name}',
                        style: TextStyles.xl(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
              ],
            );
          },
        ),
      ),
    );
  }

  String getPageName(int page) {
    return switch (page) {
      0 => 'Dom',
      1 => 'Forum',
      2 => 'Panel',
      3 => 'Chaty',
      4 => 'Ustawienia',
      int() => throw UnimplementedError(),
    };
  }

  buildNavigationBar() {
    return Container(
      height: 7.h,
      color: background,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem('images/icons/home.svg', 'Home', 0),
          _buildNavItem('images/icons/horn.svg', 'Forum', 1),
          _buildNavItem('images/icons/controls.svg', 'Panel', 2),
          _buildNavItem('images/icons/chat.svg', 'Chats', 3),
          _buildNavItem('images/icons/tool.svg', 'Settings', 4),
        ],
      ),
    );
  }

  _buildNavItem(String iconPath, String label, int index) {
    Color color = PageControllerHandler.page == index ? accent : text;

    return GestureDetector(
      onTap: () {
        setState(() {
          _pageController.jumpToPage(index);
        });
      },
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 20.w,
        height: 6.h,
        child: Column(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              ),
            ),
            Text(
              label,
              style: TextStyles.sm().copyWith(
                color: color,
                height: 0.9,
              ),
            ),
            SizedBox(
              width: 10.w,
              child: Divider(
                height: 0.5.h,
                thickness: 2,
                color: color == accent ? accent : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
