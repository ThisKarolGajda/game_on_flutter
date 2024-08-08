import 'package:game_on/common/util/exports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _lightModeEnabled = false; //todo

  @override
  void initState() {
    _lightModeEnabled = isLightModeEnabled;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildLightModeSwitch(),
      ],
    );
  }

  Padding buildLightModeSwitch() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Light mode',
              style: TextStyles.lg(),
            ),
            Switch(
              value: _lightModeEnabled,
              onChanged: (enabled) {
                setState(() {
                  _lightModeEnabled = enabled;
                  isLightModeEnabled = _lightModeEnabled;
                  updateLightMode();
                });
              },
              activeColor: accent,
            ),
          ],
        ),
      );
  }
}
