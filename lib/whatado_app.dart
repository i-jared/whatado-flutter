import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/services/environment_config.dart';
import 'package:whatado/services/startup.dart';
import 'package:flutter/services.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';

Future<void> run(String flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp();
  await Hive.initFlutter('whatado');
  await Hive.openBox('whatado');
  Startup.initDependencies();

  EnvironmentConfig.initFlavor(flavor);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerTriggerDistance: 120,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeState>(create: (_) => HomeState()),
          ChangeNotifierProvider<AddEventState>(create: (_) => AddEventState()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: MaterialColor(
            0xFF000000,
            <int, Color>{
              50: Color(0xFF000000),
              100: Color(0xFF000000),
              200: Color(0xFF000000),
              300: Color(0xFF000000),
              400: Color(0xFF000000),
              500: Color(0xFF000000),
              600: Color(0xFF000000),
              700: Color(0xFF000000),
              800: Color(0xFF000000),
              900: Color(0xFF000000),
            },
          )),
          home: WelcomeScreen(),
        ),
      ),
    );
  }
}
