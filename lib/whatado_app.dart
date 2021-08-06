import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/services/environment_config.dart';
import 'package:whatado/services/startup.dart';
import 'package:flutter/services.dart';

Future<void> run(String flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Hive.initFlutter('whatado');
  await Hive.openBox('whatado');
  Startup.initDependencies();

  EnvironmentConfig.initFlavor(flavor);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
