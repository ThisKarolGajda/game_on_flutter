import 'package:flutter/material.dart';
import 'package:game_on/common/util/background.dart';
import 'package:game_on/common/util/color_util.dart';

class ScaffoldUtil extends StatelessWidget {
  final bool addBackground;
  final Widget? body;
  final PreferredSizeWidget? appBar;

  const ScaffoldUtil({
    super.key,
    this.body,
    this.appBar,
    this.addBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
