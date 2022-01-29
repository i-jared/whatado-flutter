import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/screens/entry/choose_interests.dart';
import 'package:whatado/screens/entry/select_photos.dart';
import 'package:whatado/screens/entry/validate.dart';
import 'package:whatado/screens/entry/welcome.dart';
import 'package:whatado/screens/entry/write_bio.dart';
import 'package:whatado/screens/home/home.dart';
import 'package:whatado/screens/home/shimmer_screen.dart';
import 'package:whatado/services/environment_config.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/services/startup.dart';
import 'package:flutter/services.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';

Future<void> run(String flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp();
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);

  await Hive.initFlutter('whatado');
  await Hive.openBox('whatado');
  Startup.initDependencies();

  EnvironmentConfig.initFlavor(flavor);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool loading;
  late bool invalidAuth;

  @override
  void initState() {
    super.initState();
    loading = true;
    invalidAuth = localStorageService.refreshToken?.isEmpty ?? true;
    if (!invalidAuth) {
      SchedulerBinding.instance?.scheduleFrameCallback((timeStamp) async {
        await loginService.attemptAutoLogin();
        setState(() => loading = false);
      });
    } else {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: RefreshConfiguration(
        headerTriggerDistance: 120,
        child: MultiProvider(
            providers: [
              ChangeNotifierProvider<HomeState>(create: (_) => HomeState()),
              ChangeNotifierProvider<AddEventState>(
                  create: (_) => AddEventState()),
              ChangeNotifierProvider<UserState>(create: (_) => UserState()),
              ChangeNotifierProvider<SetupState>(create: (_) => SetupState()),
            ],
            builder: (BuildContext context, _) {
              final userState = Provider.of<UserState>(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                    textSelectionTheme: TextSelectionThemeData(
                        selectionColor: Color(0xfff7941d)),
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
                home: invalidAuth
                    ? WelcomeScreen()
                    : (loginService.loggedIn || loading)
                        ? (userState.user == null || loading)
                            ? ShimmerScreen()
                            : !userState.user!.verified
                                ? ValidatePhoneScreen()
                                : userState.user!.interests.isEmpty
                                    ? ChooseInterestsScreen()
                                    : userState.user!.bio.isEmpty
                                        ? WriteBioScreen()
                                        : userState.user!.photoUrls.isEmpty
                                            ? SelectPhotosScreen()
                                            : HomeScreen()
                        : WelcomeScreen(),
              );
            }),
      ),
    );
  }
}
