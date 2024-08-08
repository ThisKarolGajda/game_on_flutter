import 'package:flutter/material.dart';
import 'package:game_on/common/util/background.dart';
import 'package:game_on/common/util/color_util.dart';

class ScaffoldUtil extends StatelessWidget {
  final bool addBackground;
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  const ScaffoldUtil({
    super.key,
    this.body,
    this.appBar,
    this.addBackground = true,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: background,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: buildBody(),
      appBar: appBar,
    );
  }

  buildBody() {
    if (addBackground) {
      return Background(
        child: body,
      );
    }

    return body;
  }
}
