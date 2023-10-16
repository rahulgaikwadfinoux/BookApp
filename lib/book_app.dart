import 'dart:ui';

import 'package:bookapp/constants/debug_mode.dart';
import 'package:bookapp/constants/route_constatnts.dart';
import 'package:bookapp/homepage.dart';
import 'package:bookapp/layouts/login_layout/login_layout.dart';
import 'package:bookapp/layouts/signup_layout/signin_layout.dart';
import 'package:bookapp/preferences/user_preferences.dart';
import 'package:bookapp/routes/routes.dart';
import 'package:bookapp/theme/bookapp_theme.dart';
import 'package:bookapp/theme/color_provider.dart';
import 'package:bookapp/theme/contrast_provider.dart';
import 'package:bookapp/theme/theme_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'utils/custom_plugins.dart';

class BookApp extends StatefulWidget {
  final BookAppModeEnum mymode;

  const BookApp({super.key, required this.mymode});

  @override
  State<BookApp> createState() => _BookAppState();
}

late UserPreferences _userPreferences;
late ThemeProvider _themeProvider;
late ColorProvider _colorProvider;
late TextContrastProvider _textContrastProvider;

_init1() async {
  _userPreferences = await UserPreferences.getUserPreferences();
  _themeProvider = ThemeProvider(_userPreferences);
  _colorProvider = ColorProvider(_userPreferences);
  _textContrastProvider = TextContrastProvider(_userPreferences);
}

class _BookAppState extends State<BookApp> {
  bool systemDarkmodeOn = false;
  final Brightness brightness = PlatformDispatcher.instance.platformBrightness;

  late Future<void> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = _init2();
  }

  Future<bool> _init2() async {
    await _init1();
    systemDarkmodeOn = brightness == Brightness.dark;
    if (!mounted) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initFuture,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.hasError) {
          FlutterNativeSplash.remove();
          return _buildError(snapshot);
        }
        if (snapshot.connectionState != ConnectionState.done) {
          //We don't need a loading indicator since the splash screen is still visible
          return const SizedBox.shrink();
        }

        // The `create` constructor of [ChangeNotifierProvider] takes care of
        // disposing the value.
        ChangeNotifierProvider<T> provide<T extends ChangeNotifier>(T value) =>
            ChangeNotifierProvider<T>(create: (BuildContext context) => value);

        if (true) {
          // ending FlutterNativeSplash.preserve()
          FlutterNativeSplash.remove();
        }

        return MultiProvider(
          providers: <SingleChildWidget>[
            provide<UserPreferences>(_userPreferences),
            provide<ThemeProvider>(_themeProvider),
            provide<ColorProvider>(_colorProvider),
            provide<TextContrastProvider>(_textContrastProvider),
          ],
          child: Builder(builder: _buildBookApp),
        );
      },
    );
  }

  Widget _buildBookApp(BuildContext context) {
    final ThemeProvider themeProvider = context.watch<ThemeProvider>();
    final ColorProvider colorProvider = context.watch<ColorProvider>();
    final TextContrastProvider textContrastProvider =
        context.watch<TextContrastProvider>();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: BookAppTheme.getThemeData(
          Brightness.light, themeProvider, colorProvider, textContrastProvider),
      darkTheme: BookAppTheme.getThemeData(
          Brightness.dark, themeProvider, colorProvider, textContrastProvider),
      themeMode: themeProvider.currentThemeMode,
      home: const SafeArea(child: SignupLayout()),
      initialRoute: login_route,
      routes: Routes.routes,
      // onGenerateRoute: Routes.onGeneratedRoute,
      // onGenerateInitialRoutes: ,
    );
  }

  // Widget runRouteApp(Widget wid, ){

  // }

  // Widget buildPreview() {
  //   return (widget.mymode == BookAppModeEnum.debug ||
  //           widget.mymode == BookAppModeEnum.devlopment)
  //       ? DevicePreview(
  //           enabled: true,
  //           tools: const [
  //             ...DevicePreview.defaultTools,
  //             CustomPlugin(),
  //           ],
  //           builder: (context) => const HomePage(),
  //         )
  //       : const HomePage();
  // }

  Widget _buildError(AsyncSnapshot<void> snapshot) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Fatal Error: ${snapshot.error}',
          ),
        ),
      ),
    );
  }
}
