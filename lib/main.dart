import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:game_on/common/app/gameon_app.dart';
import 'package:game_on/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'common/util/exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));
  await remoteConfig.fetchAndActivate();
  remoteConfig.onConfigUpdated.listen(
        (event) async {
      await remoteConfig.activate();
    },
    onError: (final e) {},
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  analytics.toString();

  setupDependencyInjection();

  updateLightMode();

  runApp(const GameonApp());
}
